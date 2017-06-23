tokens
allTokens
	"self allTokens"
	^ self compileTimeConstants , self keywords, self operators , self divers
		