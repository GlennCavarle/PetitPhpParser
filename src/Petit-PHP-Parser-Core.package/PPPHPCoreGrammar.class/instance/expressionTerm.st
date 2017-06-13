grammar
expressionTerm
	^		(self inRB: expression) / "Grouping"
			expressionNot /
			instantiation /
			literal /						
			arrayInstantiation /  				"array instantiation"
			languageConstructInvocationExpression / 		"language constructs like die actually are not allowed as method call but could"
			functionDeclaration /				"declare a closure, anonymous function or function"
			backtickExcecution /
			((methodCall / functionCall / literal / objectScope / variable / identifier / staticScope / selfScope / parent / variableName) , 
				arrayAccess star, 
				(self inRB: (expression separatedBy: comma)) optional)
			