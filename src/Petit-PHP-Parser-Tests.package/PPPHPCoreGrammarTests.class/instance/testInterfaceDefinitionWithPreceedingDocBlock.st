grammar-keywords
testInterfaceDefinitionWithPreceedingDocBlock
	
	self 
		parse: ' 
		/**
		 * Provides default methods for mappable entities.
		 * @ORM\Table(classname)
		 * @ORM\DefaultMapper("ORM\Mappers\DefaultEntityMapper")
		 */		
		interface Mappable{
		}'
		rule: #interfaceDeclaration.
