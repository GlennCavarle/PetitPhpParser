grammar-comments
testSingleLineComment
	"Default comments. The line breaks are necessary as a delimiter (PHP default is \n)"
	self
		parse: '// A single line comment \n'
		rule: #singleLineComment.
	
	self
		parse: '// A single line comment with silly stuff in it // $ %& \n'
		rule: #singleLineComment.