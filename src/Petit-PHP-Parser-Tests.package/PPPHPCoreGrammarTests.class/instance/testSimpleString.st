grammar-literals
testSimpleString
	"Test a single quoted string"
	self 
		parse: '''aSingleQuotedString'''
		rule: #simpleString.