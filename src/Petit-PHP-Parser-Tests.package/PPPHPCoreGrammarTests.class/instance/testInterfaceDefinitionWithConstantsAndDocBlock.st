grammar-keywords
testInterfaceDefinitionWithConstantsAndDocBlock
	
	self 
		parse: 'interface Iterator {
					/**
					 * Indicates if the iterator should throw upcoming exceptions.
					 * @var int
					 */
					const ERROR_THROW_EXCEPTIONS = 2;
					/**
					 * Indicates if the iterator shoud catch all upcoming exceptions when traversing.
					 * @var int
					 * @see IteratorException
					 */
					const ERROR_CATCH_EXCEPTIONS = 4;
				}'
		rule: #interfaceDeclaration.
