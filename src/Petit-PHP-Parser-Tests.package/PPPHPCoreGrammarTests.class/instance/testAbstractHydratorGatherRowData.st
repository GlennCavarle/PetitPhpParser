flow3
testAbstractHydratorGatherRowData
	self
		parse: ' protected function gatherRowData(array $data, array &$cache, array &$id, array &$nonemptyComponents)
    {
        $rowData = array();

        foreach ($data as $key => $value) {
            // Parse each column name only once. Cache the results.
            if ( ! isset($cache[$key])) {
                switch (true) {
                    // NOTE: Most of the times it''s a field mapping, so keep it first!!!
                    case (isset($this->_rsm->fieldMappings[$key])):
                        $fieldName     = $this->_rsm->fieldMappings[$key];
                        $classMetadata = $this->_em->getClassMetadata($this->_rsm->declaringClasses[$key]);

                        $cache[$key][''fieldName'']    = $fieldName;
                        $cache[$key][''type'']         = Type::getType($classMetadata->fieldMappings[$fieldName][''type'']);
                        $cache[$key][''isIdentifier''] = $classMetadata->isIdentifier($fieldName);
                        $cache[$key][''dqlAlias'']     = $this->_rsm->columnOwnerMap[$key];
                        break;

                    case (isset($this->_rsm->scalarMappings[$key])):
                        $cache[$key][''fieldName''] = $this->_rsm->scalarMappings[$key];
                        $cache[$key][''type'']      = Type::getType($this->_rsm->typeMappings[$key]);
                        $cache[$key][''isScalar'']  = true;
                        break;

                    case (isset($this->_rsm->metaMappings[$key])):
                        // Meta column (has meaning in relational schema only, i.e. foreign keys or discriminator columns).
                        $fieldName     = $this->_rsm->metaMappings[$key];
                        $classMetadata = $this->_em->getClassMetadata($this->_rsm->aliasMap[$this->_rsm->columnOwnerMap[$key]]);

                        $cache[$key][''isMetaColumn''] = true;
                        $cache[$key][''fieldName'']    = $fieldName;
                        $cache[$key][''dqlAlias'']     = $this->_rsm->columnOwnerMap[$key];
                        $cache[$key][''isIdentifier''] = isset($this->_rsm->isIdentifierColumn[$cache[$key][''dqlAlias'']][$key]);
                        break;

                    default:
                        // this column is a left over, maybe from a LIMIT query hack for example in Oracle or DB2
                        // maybe from an additional column that has not been defined in a NativeQuery ResultSetMapping.
                        continue 2;
                }
            }

            if (isset($cache[$key][''isScalar''])) {
                $value = $cache[$key][''type'']->convertToPHPValue($value, $this->_platform);
                
                $rowData[''scalars''][$cache[$key][''fieldName'']] = $value;

                continue;
            }

            $dqlAlias = $cache[$key][''dqlAlias''];

            if ($cache[$key][''isIdentifier'']) {
                $id[$dqlAlias] .= ''|'' . $value;
            }

            if (isset($cache[$key][''isMetaColumn''])) {
                if ( ! isset($rowData[$dqlAlias][$cache[$key][''fieldName'']]) && $value !== null) {
                    $rowData[$dqlAlias][$cache[$key][''fieldName'']] = $value;
                    if ($cache[$key][''isIdentifier'']) {
                        $nonemptyComponents[$dqlAlias] = true;
                    }
                }

                continue;
            }

            // in an inheritance hierarchy the same field could be defined several times.
            // We overwrite this value so long we dont have a non-null value, that value we keep.
            // Per definition it cannot be that a field is defined several times and has several values.
            if (isset($rowData[$dqlAlias][$cache[$key][''fieldName'']]) && $value === null) {
                continue;
            }

            $rowData[$dqlAlias][$cache[$key][''fieldName'']] = $cache[$key][''type'']->convertToPHPValue($value, $this->_platform);

            if ( ! isset($nonemptyComponents[$dqlAlias]) && $value !== null) {
                $nonemptyComponents[$dqlAlias] = true;
            }
        }

        return $rowData;
    }' rule: #methodDefinition.