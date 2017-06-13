grammar-model-examples
testZendMethodDeclarationComplexForeachStatement
	self
		parse:'foreach (self::$_defaultOptions as $defaultOptionName => $defaultOptionValue) {
                if (isset(self::$_defaultOptions[$defaultOptionName])) {
                    ini_set("session.$defaultOptionName", $defaultOptionValue);
                }
            }'
		rule: #foreachStatement.