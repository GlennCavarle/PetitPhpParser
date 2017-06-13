grammar-model-examples
testClassDeclarationSkeletonBody
	self parse: ' 
					{
						const ALPHANUM = "/[a-zA-Z0-9]*/";
						private $property=false;
					}'
		rule: #classBody.