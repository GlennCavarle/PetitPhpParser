grammar-comments
testMultiLineComment
	"Multi line comments without inner parsing"
	self
		parse: '/* Multiline \n 
		* with some stuff \n 
		* @var string $name \n */'
		rule: #multiLineComment.
	self
		parse: '/** Shorter version on one line */'
		rule: #multiLineComment.