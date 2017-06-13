as yet unclassified
isAbsolute
	"Bubbles up the full path and checks if its an absolute path which means it starts with a backslash"
	^(self isSeparator) or: [ 
		(self parentNamespace notNil) and: [ self parentNamespace isAbsolute ].
	].