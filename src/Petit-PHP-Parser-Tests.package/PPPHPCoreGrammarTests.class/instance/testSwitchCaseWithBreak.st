grammar-control-structures
testSwitchCaseWithBreak
	self
		parse: 'case 1: 
		$theCase=1;
		break;'
		rule: #switchCase.