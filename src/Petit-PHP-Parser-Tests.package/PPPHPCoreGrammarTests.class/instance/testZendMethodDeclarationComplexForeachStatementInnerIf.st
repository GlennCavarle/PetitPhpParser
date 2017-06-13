grammar-model-examples
testZendMethodDeclarationComplexForeachStatementInnerIf
	self
		parse:'if (isset(self::$_defaultOptions[$defaultOptionName])) {
                    		ini_set("session.$defaultOptionName", $defaultOptionValue);
                		}'
		rule: #ifStatement.