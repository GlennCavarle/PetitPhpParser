grammar-literals
testHexaDecimalInteger
	"Test an integer in hexadecimal form"
	self 
		parse: '0xaff'
		rule: #hexadecimalInteger.