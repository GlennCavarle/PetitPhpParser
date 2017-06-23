grammar-utility
parser: aParser between: openDelimiter and: closingDelimiter
	"Helper method to put parsers between brackets or delimiters, this by default makes the inner parser optional, to simplify debugging"
	|closing|
	closing := closingDelimiter asParser trim.
	^ openDelimiter asParser trim, aParser optional, closing