grammar-literals
testStringSpecialCasesEscapedAtEnd
	"testing escaping"
	self
		parse: '"1234\""'
		rule: #parsedString.