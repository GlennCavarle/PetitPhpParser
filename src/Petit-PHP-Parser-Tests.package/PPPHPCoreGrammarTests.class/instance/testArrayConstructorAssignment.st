grammar-expressions
testArrayConstructorAssignment
	"tests the key value syntax for array instantiation"
	self
		parse: 'consta => "aString"'
		rule: #expression.
	self
		parse: '"aString"=>true'
		rule: #expression.
	self
		parse: '2=>true'
		rule: #expression.
	self
		parse: 'someconstant=>"yay"'
		rule: #expression.