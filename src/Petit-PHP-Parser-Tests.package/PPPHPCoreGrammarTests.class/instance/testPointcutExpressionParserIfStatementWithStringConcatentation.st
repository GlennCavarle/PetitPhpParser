flow3
testPointcutExpressionParserIfStatementWithStringConcatentation
	self
		parse: 'if ($openParentheses > 0) {
				$substring .= $string{$i};
			}'
	rule: #ifStatement.