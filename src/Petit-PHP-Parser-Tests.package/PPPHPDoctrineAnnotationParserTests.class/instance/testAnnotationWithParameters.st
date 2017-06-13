as yet unclassified
testAnnotationWithParameters
	"@Orm\Assert(type='integer', range= {'min'=0, 'max' =10}, true)"
	super testAnnotationWithParameters.

	self assert: result fullyQualifiedTypeName = 'Orm\Assert'.
	self assert: result parameters size = 3.
	self assert: result parameters first nodeName = 'type'.
	self assert: result parameters first attributeValue second = 'integer'.
	self assert: result parameters second nodeName = 'range'.
	self assert: result parameters third nodeName = 3.
	self assert: result parameters third attributeValue equals: 'true'.
	