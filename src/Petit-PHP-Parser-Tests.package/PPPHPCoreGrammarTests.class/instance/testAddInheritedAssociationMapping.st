doctrine2
testAddInheritedAssociationMapping
	self
		parse:'public function addInheritedAssociationMapping(array $mapping/*, $owningClassName = null*/)
    {
        if (isset($this->associationMappings[$mapping[''fieldName'']])) {
            throw MappingException::duplicateAssociationMapping($this->name, $mapping[''fieldName'']);
        }
        $this->associationMappings[$mapping[''fieldName'']] = $mapping;
    }'
		rule: #methodDefinition.