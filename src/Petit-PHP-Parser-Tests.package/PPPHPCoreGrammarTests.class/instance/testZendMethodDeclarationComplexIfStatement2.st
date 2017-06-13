grammar-model-examples
testZendMethodDeclarationComplexIfStatement2
	self
		parse:'
		 if (array_key_exists($userOptionName, self::$_defaultOptions)) {
                ini_set("session.$userOptionName", $userOptionValue);
            }
            elseif (isset(self::$_localOptions[$userOptionName])) {
                self::${self::$_localOptions[$userOptionName]} = $userOptionValue;
            }
            else {
                /** @see Zend_Session_Exception */
                require_once "Zend/Session/Exception.php";
                throw new Zend_Session_Exception("Unknown option: $userOptionName = $userOptionValue");
            }'
		rule: #ifStatement.