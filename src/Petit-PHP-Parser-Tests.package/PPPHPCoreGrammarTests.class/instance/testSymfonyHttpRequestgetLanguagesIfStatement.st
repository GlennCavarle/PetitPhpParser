symfony2
testSymfonyHttpRequestgetLanguagesIfStatement
	self 
	parse: '
        if (null !== $this->languages) {
            return $this->languages;
        }'
	rule: #ifStatement.