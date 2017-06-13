flow3
testGetSubstringBetweenParentheses
	self
		parse: '
	protected function getSubstringBetweenParentheses($string) {
		$startingPosition = 0;
		$openParentheses = 0;
		$substring = '''';

		for ($i = $startingPosition; $i < strlen($string); $i++) {
			if ($string[$i] === ''('') {
				$openParentheses--;
			}
			if ($openParentheses > 0) {
				$substring .= $string{$i};
			}
			if ($string[$i] === ''('') {
				$openParentheses++;
			}
		}
		if ($openParentheses < 0) {
			throw new \TYPO3\FLOW3\AOP\Exception\InvalidPointcutExpressionException(''Pointcut expression is in excess of '' . abs($openParentheses) . '' closing parenthese(s), defined in '' . $this->sourceHint, 1168966689);
		}
		if ($openParentheses > 0) {
			throw new \TYPO3\FLOW3\AOP\Exception\InvalidPointcutExpressionException(''Pointcut expression lacks of '' . $openParentheses . '' closing parenthese(s), defined in '' . $this->sourceHint, 1168966690);
		}
		return $substring;
	}'
	rule: #methodDefinition.