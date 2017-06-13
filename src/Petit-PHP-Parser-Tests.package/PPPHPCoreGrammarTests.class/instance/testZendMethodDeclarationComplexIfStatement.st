grammar-model-examples
testZendMethodDeclarationComplexIfStatement
	self
		parse:'
		if(!self::$_defaultOptionsSet){
			foreach (self::$_defaultOptions as $defaultOptionName => $defaultOptionValue) {
				if (isset(self::$_defaultOptions[$defaultOptionName])) {
					ini_set("session.$defaultOptionName", $defaultOptionValue);
				}
			}
			self::$_defaultOptionsSet = true; 
		}'
		rule: #ifStatement.