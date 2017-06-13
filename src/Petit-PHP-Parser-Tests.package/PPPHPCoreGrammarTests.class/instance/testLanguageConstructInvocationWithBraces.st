grammar-language-construct
testLanguageConstructInvocationWithBraces
	self 
		parse: 'die("somestuffhappened")'
		rule: #languageConstructInvocation.
	
	self
		parse: 'echo("hello world")'
		rule: #languageConstructInvocation.
		
	self
		parse: 'include_once("somefile.php")'
		rule: #languageConstructInvocation.