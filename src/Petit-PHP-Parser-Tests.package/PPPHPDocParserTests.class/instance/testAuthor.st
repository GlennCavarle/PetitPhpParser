as yet unclassified
testAuthor
	super testAuthor.
	
	self assert: (result isMemberOf: PPPHPAnnotation).
	self assert: (result isMarker).
	self assert: (result hasContent).
	self assert: (result hasParameters not).
	self assert: (result nodeName = 'author').
	self assert: (result content = 'An Author').