doctrine2
testArrayInstantiationWithComments
	self
		parse: 'array(
            "associationMappings",
            "columnNames", //TODO: Not really needed. Can use fieldMappings[$fieldName]["columnName"]
            "fieldMappings",
            "fieldNames",
            "identifier",
            "isIdentifierComposite", // TODO: REMOVE
            "name",
            "namespace", // TODO: REMOVE
            "table",
            "rootEntityName",
            "idGenerator", //TODO: Does not really need to be serialized. Could be moved to runtime.
        )'
		rule: #arrayInstantiation.