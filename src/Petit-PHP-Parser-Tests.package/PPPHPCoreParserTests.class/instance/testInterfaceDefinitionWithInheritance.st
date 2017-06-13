grammar-statements
testInterfaceDefinitionWithInheritance
	super testInterfaceDefinitionWithInheritance.
	
	self assert: (result isMemberOf: PPPHPInterfaceNode).
	self assert: result nodeName equals: 'IteratorAggregate'.
	self assert: result superTypes size equals: 1.
	self assert: (result superTypes first isMemberOf: PPPHPInterfaceNode ).
	self assert: result superTypes first nodeName equals: 'MyIterator'.
	
	self assert: result attributes first hasDocBlock.
	self assert: result attributes first docBlock equals: '/**
						* Indicates error behavior
						*/
						'.
						
	self assert: result behaviouralEntities size equals: 3.
	self assert: result behaviouralEntities first nodeName equals: 'next'.