grammar-literals
testOctalIntegerFails
	"Test an octal rule against decimal and hexadecimal integers"
	self 
		fail: 'babedi'
		rule: #octalInteger.
		
	self
		fail: '0xafcb'
		rule: #octalInteger.
	
	self
		fail: '1246'
		rule: #octalInteger.
	
	self
		fail: '0'
		rule: #octalInteger.
	
	self
		fail: '08'
		rule: #octalInteger.