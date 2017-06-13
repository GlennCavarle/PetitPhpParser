symfony2
testSymfonyHttpRequestSplitHttpAcceptHeaderMethodIf
	self 
	parse: '
        if (!$header) {
            return array();
    }'
	rule: #ifStatement