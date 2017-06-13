grammar-literals
testParsedString
	"Test a single quoted string"
	self 
		parse: '"parsed stuff"'
		rule: #parsedString.