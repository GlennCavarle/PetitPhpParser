as yet unclassified
testMethodDefinitionComplexHeader
	self
		parse: 'public function supaaComplexFunction(
	$simple, 
	Some\Type\Hint $param = null, 
	Array $emptyArr = array(), 
	&$referencedArray=array(), 
	$withConstant = Errors\AbstractError::DEFAULT_MODE, 
	$arrayWithDefaults = array( ''one''=>true,''two''=>2,''three''=>''check'',''four''=>2.5))
	{
	}
'
		rule: #methodDefinition.