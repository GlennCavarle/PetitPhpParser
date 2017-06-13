grammar-literals
testDecimalIntegerFails
	"Test an integer in non decimal form"
	self 
		fail: '00'
		rule: #decimalInteger.
	self
		fail: '0234'
		rule: #decimalInteger.