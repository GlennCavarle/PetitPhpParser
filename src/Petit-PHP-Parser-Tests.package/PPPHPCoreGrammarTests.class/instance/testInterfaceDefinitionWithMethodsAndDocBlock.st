grammar-keywords
testInterfaceDefinitionWithMethodsAndDocBlock
	
	self 
		parse: 'interface Iterator {
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
				}'
		rule: #interfaceDeclaration.
