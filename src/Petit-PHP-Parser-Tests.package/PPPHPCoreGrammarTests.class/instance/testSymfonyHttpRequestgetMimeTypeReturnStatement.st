symfony2
testSymfonyHttpRequestgetMimeTypeReturnStatement
	self 
	parse: 'return isset(static::$formats[$format]) ? static::$formats[$format][0] : null;'
	rule: #innerStatement.