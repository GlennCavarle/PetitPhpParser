symfony2
testSymfonyHttpRequestgetMimeType
	self 
	parse: 'public function getMimeType($format)
    {
        if (null === static::$formats) {
            static::initializeFormats();
        }

        return isset(static::$formats[$format]) ? static::$formats[$format][0] : null;
    }'
	rule: #methodDefinition.