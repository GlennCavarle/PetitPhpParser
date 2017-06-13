symfony2
testSymfonyHttpRequestPrepareBasePathIfElseStatement
	self 
	parse: ' if (basename($baseUrl) === $filename) {
            $basePath = dirname($baseUrl);
        } else {
            $basePath = $baseUrl;
        }'
	rule: #ifStatement.