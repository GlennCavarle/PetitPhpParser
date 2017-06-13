grammar-statements
methodDefinition
	^ (comment optional , methodHeader , (methodBody / semicolon) ) token