grammar-statements
testMethodDefinitionComplexHeader
	"Split up!"
	| param |
	super testMethodDefinitionComplexHeader.
	
	self assert: (result isMemberOf: PPPHPMethodNode).
	self assert: result isAbstract not.
	self assert: result isStatic not.
	self assert: (result nodeName = 'supaaComplexFunction').
	
	self assert: (result scope isMemberOf: PPPHPScopeNode ).
	self assert: (result scope scope = 'public').
	
	self assert: (result parameters size = 6).
	
	param:= result parameters first.
	self assert: (param typeHint isNil).
	self assert: (param nodeName  = 'simple').
	self assert: (param defaultValue isNil).
	
	param := result parameters second.
	self assert: (param typeHint nodeName = 'Hint').
	self assert: (param nodeName = 'param').
	self assert: param defaultValue equals: 'null'.
	
	param := result parameters third.
	self assert: param typeHint nodeName equals: 'Array'.
	self assert: (param nodeName  = 'emptyArr').
	self assert: (param defaultValue includes: 'array').
	
	param := result parameters fourth.
	self assert: (param typeHint = nil).
	self assert: (param nodeName = 'referencedArray').
	self assert: (param defaultValue includes: 'array').
	self assert: (param isReference).
	
	param := result parameters fifth.
	self assert: (param typeHint = nil).
	self assert: (param nodeName = 'withConstant').
	self assert: (param defaultValue notNil).
	self assert: (param isReference not).
	
	param := result parameters sixth.
	self assert: (param typeHint = nil).
	self assert: (param nodeName = 'arrayWithDefaults').
	self assert: (param defaultValue includes: 'array').