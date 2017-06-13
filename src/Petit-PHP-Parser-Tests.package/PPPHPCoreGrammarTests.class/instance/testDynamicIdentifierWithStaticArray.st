grammar-identifiers
testDynamicIdentifierWithStaticArray
	
	self 
		parse: '{self::$_localOptions[$userOptionName]}'
		rule: #dynamicIdentifier.
	