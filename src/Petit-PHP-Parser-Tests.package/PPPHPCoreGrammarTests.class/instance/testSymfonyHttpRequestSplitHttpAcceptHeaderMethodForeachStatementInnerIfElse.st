symfony2
testSymfonyHttpRequestSplitHttpAcceptHeaderMethodForeachStatementInnerIfElse
	self 
	parse: '
            if (preg_match("/;\s*(q=.*$)/", $value, $match)) {
                $q     = (float) substr(trim($match[1]), 2);
                $value = trim(substr($value, 0, -strlen($match[0])));
            } else {
                $q = 1;
            }'
	rule: #ifStatement.