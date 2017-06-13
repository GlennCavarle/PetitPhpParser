symfony2
testSymfonyHttpRequestgetLanguagesForeachStatementEmpty
	self 
	parse: '
      foreach ($languages as $lang => $q) {
            
            }
'
	rule: #foreachStatement.