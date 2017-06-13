grammar-control-structures
testSwitchStatement
	self
		parse: 'switch($i){
			case 1:
				$theCase=1;
				break;
			case 2:
				$theCase=2;
				break;
		}'
		rule: #switchStatement.