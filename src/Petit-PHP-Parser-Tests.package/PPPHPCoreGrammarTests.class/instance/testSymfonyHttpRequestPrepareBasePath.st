symfony2
testSymfonyHttpRequestPrepareBasePath
	self 
	parse: ' protected function prepareBasePath()
    {
        $filename = basename($this->server->get("SCRIPT_FILENAME"));
        $baseUrl = $this->getBaseUrl();
        if (empty($baseUrl)) {
            return "";
        }

        if (basename($baseUrl) === $filename) {
            $basePath = dirname($baseUrl);
        } else {
            $basePath = $baseUrl;
        }

        if ("\\" === DIRECTORY_SEPARATOR) {
            $basePath = str_replace("\\", "/", $basePath);
        }

        return rtrim($basePath, "/");
    }
'
	rule: #methodDefinition.