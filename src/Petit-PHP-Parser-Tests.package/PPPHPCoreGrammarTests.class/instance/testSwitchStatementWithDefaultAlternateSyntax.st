grammar-control-structures
testSwitchStatementWithDefaultAlternateSyntax
	self
		parse: 'switch($i):
			case 1:
				$theCase=1;
				break;
			case 2:
				$theCase=2;
				break;
			default:
				$theCase=3;
		endswitch;'
		rule: #switchStatement.