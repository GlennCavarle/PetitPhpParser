grammar-variables
variableName
	"	Default Variable: 	
		$variable = 'thevar';
		
		VariableVariable:
		$$variable = 'two'
		$thevar --> 'two'
		
		ArrayAccess
		$some[2]
		
		In Methods:
		$this->variable
		$this->$variableContaining
		
		Outside:
		$theObject->variable
		$theObject->$variableContaining
		"
	^(identifierCharFirst , identifierChar star) flatten