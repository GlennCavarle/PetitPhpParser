as yet unclassified
testVariableDefinitionListWithDefaultsAndScopeModifier
	self
		parse: 'private $_name = "john", $_lastname = "doe", $_isMember = true, $isSomething = null;'
		rule: #classFields.