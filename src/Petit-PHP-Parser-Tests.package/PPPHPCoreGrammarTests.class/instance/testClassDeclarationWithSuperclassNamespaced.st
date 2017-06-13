grammar-statements
testClassDeclarationWithSuperclassNamespaced
	
		self
		parse: 'class Test extends \vendor\Component\ArrayObject { }'
		rule: #classDeclaration