grammar-comments
multiLineComment
	"Multi line comment:
	Since PHP is dynamic typed and annotations often are realized via parsing of the docs it makes sense to implement a parser for the multiline doc comments."
	^(self parser: ('*/' asParser negate star) between: '/*' and: '*/') flatten.