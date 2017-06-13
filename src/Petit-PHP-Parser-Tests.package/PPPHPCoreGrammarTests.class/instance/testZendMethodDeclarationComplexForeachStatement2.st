grammar-model-examples
testZendMethodDeclarationComplexForeachStatement2
	self
		parse:' foreach ($userOptions as $userOptionName => $userOptionValue) {

            $userOptionName = strtolower($userOptionName);

            // set the ini based values
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
            }
        }'
		rule: #foreachStatement.