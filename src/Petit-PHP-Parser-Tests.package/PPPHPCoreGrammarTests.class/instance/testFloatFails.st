grammar-literals
testFloatFails
	"ensure that a integer is not interpreted as float"
	self
		fail: '1234'
		rule: #float.
	self
		fail: '012'
		rule: #float.
	self
		fail: '0xaf89'
		rule: #float.