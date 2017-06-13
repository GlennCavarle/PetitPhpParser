as yet unclassified
testFunctionDeclarationWithParametersAndDefaults
	self
		parse: 'function($paramOne = 1, $paramTwo = array()){}'
		rule: #functionDeclaration.
	self
		parse: 'function($param = array(1=>"wow")){}'
		rule: #functionDeclaration.