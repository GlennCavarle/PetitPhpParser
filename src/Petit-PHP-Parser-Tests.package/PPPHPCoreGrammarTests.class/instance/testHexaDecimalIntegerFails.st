grammar-literals
testHexaDecimalIntegerFails
	"Test an integer in hexadecimal form"
	self 
		fail: '0afff'
		rule: #hexadecimalInteger.
	self 
		fail: '0x'
		rule: #hexadecimalInteger.
	self 
		fail: '0x9dfg'
		rule: #hexadecimalInteger.