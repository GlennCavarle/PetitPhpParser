grammar-variables
variable
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
	^dollar, (variable / variableName / dynamicIdentifier )