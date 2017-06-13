grammar-language-construct
testLanguageConstruct
	self 
		parse: 'exit'
		rule: #languageConstruct.
	
	self
		parse: 'echo'
		rule: #languageConstruct.