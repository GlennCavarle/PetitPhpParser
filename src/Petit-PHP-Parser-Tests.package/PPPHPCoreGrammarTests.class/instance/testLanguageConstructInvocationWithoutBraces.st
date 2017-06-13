grammar-language-construct
testLanguageConstructInvocationWithoutBraces
	self 
		parse: 'return "hello world"'
		rule: #languageConstructInvocation.
	self 
		parse: 'echo "hello world"'
		rule: #languageConstructInvocation.