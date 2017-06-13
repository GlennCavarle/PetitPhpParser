grammar-literals
testDecimalInteger
	"Test an integer in decimal form"
	self 
		parse: '10'
		rule: #decimalInteger.
	self
		parse: '0'
		rule: #decimalInteger.
	self
		parse: '2092345'
		rule: #decimalInteger.
