grammar-literals
testOctalInteger
	"Test an integer in octal form"
	self 
		parse: '012'
		rule: #octalInteger.
		
	self 
		parse: '0001224'
		rule: #octalInteger.