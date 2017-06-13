as yet unclassified
top
	self isRoot
		ifTrue: [ ^ self ].
	^ self parentNamespace top