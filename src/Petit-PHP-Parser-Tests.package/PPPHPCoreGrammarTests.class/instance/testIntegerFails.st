grammar-literals
testIntegerFails
	"Test integer in different forms"
	self 
		fail: 'babedi'
		rule: #integer.
	self 
		fail: '+check'
		rule: #integer.
	self 
		fail: '0aber'
		rule: #integer.
	self
		fail: '012K'
		rule: #integer.
	self
		fail: '--12'
		rule: #integer.