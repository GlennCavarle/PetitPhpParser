grammar-literals
testSimpleStringWithSpecialCharacters
	"Test a single quoted string that contains usually parsed variables"
	self 
		parse: '''$aVariable {$a->methodCall} \n escaped'''
		rule: #simpleString.