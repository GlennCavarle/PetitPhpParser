grammar-literals
testStringSpecialCases
	"testing escaping"
	self
		parse: '"12\"34"'
		rule: #parsedString.