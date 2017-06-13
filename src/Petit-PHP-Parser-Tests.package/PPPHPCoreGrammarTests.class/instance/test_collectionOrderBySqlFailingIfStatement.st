doctrine2
test_collectionOrderBySqlFailingIfStatement
	self
		parse:'if ( ! isset($this->_class->fieldMappings[$fieldName])) {
                ORMException::unrecognizedField($fieldName);
            }'
		rule: #ifStatement.