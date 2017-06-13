grammar-literals
testInteger
	"Test integer in different forms"
	self 
		parse: '123'
		rule: #integer.
	self 
		parse: '-123'
		rule: #integer.
	self 
		parse: '+123'
		rule: #integer.
	self
		parse: '012'
		rule: #integer.
	self
		parse: '-012'
		rule: #integer.
	self
		parse: '0xaf12'
		rule: #integer.
	self
		parse: '0XA'
		rule: #integer.