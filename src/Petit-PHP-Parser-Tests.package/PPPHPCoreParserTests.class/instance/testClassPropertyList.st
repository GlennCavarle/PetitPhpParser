grammar-statements
testClassPropertyList
	super testClassPropertyList.
	
	self assert: result size equals: 3.
	
	self assert: result first nodeName equals: 'john'.
	self assert: result first scope isPublic.
	
	self assert: result second scope isPublic.
	self assert: result second nodeName equals: 'prop'.
	self assert: result second hasDefaultValue.
	self assert: result second defaultValue equals: 'true'.
		
	self assert: result third scope isPublic.
	self assert: result third nodeName equals: 'something'.
	self assert: result third hasDefaultValue.	
	