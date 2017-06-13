as yet unclassified
testReturn
	super testReturn.
	
	self assert: (result isMemberOf: PPPHPAnnotation).
	self assert: (result isMarker).
	self assert: (result hasContent).
	self assert: (result hasParameters not).
	self assert: (result nodeName = 'return').
	self assert: (result content = 'aType').