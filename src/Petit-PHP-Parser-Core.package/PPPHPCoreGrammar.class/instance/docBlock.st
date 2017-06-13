grammar-comments
docBlock
	"Multi line comment:
	Since PHP is dynamic typed and annotations often are realized via parsing of the docs it makes sense to implement a parser for the multiline doc comments."
	^((('/**' asParser trim, $/ asParser not) ==> [:result | result first ]), '*/' asParser negate star, '*/' asParser trim) flatten