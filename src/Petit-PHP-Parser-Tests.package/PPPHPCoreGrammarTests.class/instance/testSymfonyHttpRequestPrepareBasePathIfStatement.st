symfony2
testSymfonyHttpRequestPrepareBasePathIfStatement
	self 
	parse: ' if (empty($baseUrl)) {
            return "";
        }'
	rule: #ifStatement.