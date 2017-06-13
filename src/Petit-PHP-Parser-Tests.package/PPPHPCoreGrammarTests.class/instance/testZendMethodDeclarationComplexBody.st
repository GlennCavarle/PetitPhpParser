grammar-model-examples
testZendMethodDeclarationComplexBody
	self
		parse:' {
        // set default options on first run only (before applying user settings)
        if (!self::$_defaultOptionsSet) {
            foreach (self::$_defaultOptions as $defaultOptionName => $defaultOptionValue) {
                if (isset(self::$_defaultOptions[$defaultOptionName])) {
                    ini_set("session.$defaultOptionName", $defaultOptionValue);
                }
            }

            self::$_defaultOptionsSet = true;
        }

        // set the options the user has requested to set
        foreach ($userOptions as $userOptionName => $userOptionValue) {

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
        }
    }'
		rule: #methodBody.