as yet unclassified
testVariableDefinitionListWithDefaults
	self
		parse: 'private $_name = "john", $_lastname = "doe", $_isMember = true, $isSomething = null;'
		rule: #classFields.