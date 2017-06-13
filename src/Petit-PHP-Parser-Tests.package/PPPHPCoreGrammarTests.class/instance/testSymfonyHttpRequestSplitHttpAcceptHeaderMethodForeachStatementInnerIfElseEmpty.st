symfony2
testSymfonyHttpRequestSplitHttpAcceptHeaderMethodForeachStatementInnerIfElseEmpty
	self 
	parse: '
            if (preg_match("/;\s*(q=.*$)/", $value, $match)) {
            } else {
            }'
	rule: #ifStatement.