symfony2
testSymfonyHttpRequestgetMimeTypeIfStatement
	self 
	parse: '
	  if (null === static::$formats) {
            static::initializeFormats();
        }'
	rule: #ifStatement.