instance creation
fromToken: aToken
	super fromToken: aToken.
	self name: aToken parsedValue 