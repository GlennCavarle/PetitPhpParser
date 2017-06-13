grammar-comments
comment
	"comments in the source code:
	// single line comment
	/*
	A docblock (multi Line Comment)
	*/"
	^(singleLineComment / docBlock / multiLineComment) trim.