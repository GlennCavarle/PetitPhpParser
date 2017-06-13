symfony2
testSymfonyHttpRequestPrepareBasePathIfStatement2
	self 
	parse: ' if ("\\" === DIRECTORY_SEPARATOR) {
            $basePath = str_replace("\\", "/", $basePath);
        }'
	rule: #ifStatement.