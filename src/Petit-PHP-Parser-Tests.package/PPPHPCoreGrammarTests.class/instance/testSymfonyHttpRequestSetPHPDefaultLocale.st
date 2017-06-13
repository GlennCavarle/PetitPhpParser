symfony2
testSymfonyHttpRequestSetPHPDefaultLocale
	self 
	parse: 'private function setPhpDefaultLocale($locale)
    {
        // if either the class Locale doesn"t exist, or an exception is thrown when
        // setting the default locale, the intl module is not installed, and
        // the call can be ignored:
        try {
            if (class_exists("Locale", false)) {
                \Locale::setDefault($locale);
            }
        } catch (\Exception $e) {
        }
    }'
	rule: #methodDefinition.