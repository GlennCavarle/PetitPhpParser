grammar-control-structures
testSwitchStatementWithEqualCases
	self
		parse: 'switch($i){
			case 1:
			case 2:
				$theCase=2;
				break;
			default:
				$theCase=3;
		}'
		rule: #switchStatement.