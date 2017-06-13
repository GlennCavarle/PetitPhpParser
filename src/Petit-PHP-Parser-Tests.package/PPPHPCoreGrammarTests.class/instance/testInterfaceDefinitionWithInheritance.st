grammar-keywords
testInterfaceDefinitionWithInheritance
	
	self 
		parse: '
					/**
					* Default IteratorInterface
					* @Interface.Observer("Some\Subscriber\Class")
					*/
					interface IteratorAggregate extends \vendor\MyIterator {
						/**
						* Indicates error behavior
						*/
						const ERROR_CATCH_EXCEPTION = 2;
						const ERROR_THROW_EXCEPTION = 4;
						/**
					 	* Sets the internal pointer to the next item.
					 	* @Observer.Listener("IteratorListenerClass")
					 	* @return void
					 	*/
					
						public function next();
						/**
					 	* Returns the current item.
					 	* @return mixed
					 	*/
						public function current();
						/**
						* just some comment
						*/
						/**
						* Indicates if there is a valid successor.
						* @parameter int $error_behaviour
						* @return boolean
						*/
						public function valid($error_behavior = 2);
					}'
		rule: #interfaceDeclaration.
