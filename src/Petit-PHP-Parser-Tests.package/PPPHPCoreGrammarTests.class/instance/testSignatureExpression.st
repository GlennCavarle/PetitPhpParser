grammar-expressions
testSignatureExpression
	"Test allowed expressions in function signatures"
	self
		parse: '$name'
		rule: #signatureExpression.
	self
		parse: '&$name'
		rule: #signatureExpression.
	self
		parse: '$name = false'
		rule: #signatureExpression.
	self
		parse: '&$name = array()'
		rule: #signatureExpression.
	self
		parse: 'vendor\Component\ClassName $name = array()'
		rule: #signatureExpression.
	self
		parse: 'A\Component\ClassName &$name = array()'
		rule: #signatureExpression.
	self
		parse: '$config = array(someconstant=>"yay", "anotherArray"=>array(2,3,4))'
		rule: #signatureExpression.