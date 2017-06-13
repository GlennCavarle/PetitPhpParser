grammar-comments
testSingleLineCommentNested
	"Default comments. The line breaks are necessary as a delimiter (PHP default is \n)"
	self
		parse: '// A single line comment with /* a nested multiline comment */ \n'
		rule: #singleLineComment.