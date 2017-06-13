grammar-expressions
signatureExpression
	"Definition of a method signature"
	self flag: 'Todo: type hinting!'.
	^(fullyQualifiedClassName optional / array), "Type Hint"
	  (reference optional , variable),  "Referenced or default variable pass"
	  ('=' asParser trim, (arrayInstantiation / literal / constant)) optional. "default value assignment"