grammar-model-examples
testClassDeclarationSkeleton
	self parse: ' class SomeClass 
					extends \Superclass 
					implements \Serializable, \Countable
					{
						const ALPHANUM = "/[a-zA-Z0-9]*/", EMAIL = 1, SOMESTUFF = 3;
						private $property=false;
						public $prop = true, $something = 2;
						private $hay, $ho;
						private static $indices;
						static protected $indicesArray = array(1,2,3);
					}'
		rule: #classDeclaration.