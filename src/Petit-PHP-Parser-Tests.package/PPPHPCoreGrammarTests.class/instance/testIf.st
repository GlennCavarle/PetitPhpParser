grammar-keywords
testIf
	self parse: 'if' rule: #if.	"result should be 'if' "
	self parse: ' IF ' rule: #if	"result should be 'IF' "