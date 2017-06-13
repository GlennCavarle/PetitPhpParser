grammar-namespace
testExpressionBacktickExcecution
	self parse: '$filesList = `ls -a`'
		rule: #expression