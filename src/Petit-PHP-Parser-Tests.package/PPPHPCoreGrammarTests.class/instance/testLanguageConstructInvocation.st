grammar-language-construct
testLanguageConstructInvocation
	self 
		parse: 'die("somestuffhappened")'
		rule: #languageConstructInvocation.
	
	self
		parse: 'echo "hello world"'
		rule: #languageConstructInvocation.
	
	self
		parse: 'list($anarray)'
		rule: #languageConstructInvocation.