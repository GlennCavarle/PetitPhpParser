doctrine2
test_collectionOrderBySql
	self
		parse:'protected final function _getCollectionOrderBySQL(array $orderBy, $baseTableAlias)
    {
        $orderBySql = '''';
        foreach ($orderBy as $fieldName => $orientation) {
            if ( ! isset($this->_class->fieldMappings[$fieldName])) {
                ORMException::unrecognizedField($fieldName);
            }

            $tableAlias = isset($this->_class->fieldMappings[$fieldName][''inherited'']) ?
                    $this->_getSQLTableAlias($this->_class->fieldMappings[$fieldName][''inherited''])
                    : $baseTableAlias;

            $columnName = $this->_class->getQuotedColumnName($fieldName, $this->_platform);
            $orderBySql .= $orderBySql ? '', '' : '' ORDER BY '';
            $orderBySql .= $tableAlias . ''.'' . $columnName . '' '' . $orientation;
        }

        return $orderBySql;
    }'
		rule: #methodDefinition.