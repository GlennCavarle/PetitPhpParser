grammar-keywords
testFloatConcatenationFails
	"a float can be defined as 1. but also concatenated with the dot, added a lookahead to prevent errors"
	self fail: '1."st"'
		rule: #float 