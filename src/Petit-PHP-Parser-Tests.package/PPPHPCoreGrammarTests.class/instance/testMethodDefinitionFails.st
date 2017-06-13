as yet unclassified
testMethodDefinitionFails
	""
	self
		fail: 'public function public testFunction(){}'
		rule: #methodDefinition.
	self
		fail: 'public function static testFunction(){}'
		rule: #methodDefinition.