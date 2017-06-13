symfony2
testSymfonyHttpRequestPrepareBaseUrl
	self 
	parse: 'protected function prepareBaseUrl()
    {
        $filename = basename($this->server->get("SCRIPT_FILENAME"));

        if (basename($this->server->get("SCRIPT_NAME")) === $filename) {
            $baseUrl = $this->server->get("SCRIPT_NAME");
        } elseif (basename($this->server->get("PHP_SELF")) === $filename) {
            $baseUrl = $this->server->get("PHP_SELF");
        } elseif (basename($this->server->get("ORIG_SCRIPT_NAME")) === $filename) {
            $baseUrl = $this->server->get("ORIG_SCRIPT_NAME"); // 1and1 shared hosting compatibility
        } else {
            // Backtrack up the script_filename to find the portion matching
            // php_self
            $path    = $this->server->get("PHP_SELF", "");
            $file    = $this->server->get("SCRIPT_FILENAME", "");
            $segs    = explode("/", trim($file, "/"));
            $segs    = array_reverse($segs);
            $index   = 0;
            $last    = count($segs);
            $baseUrl = "";
            do {
                $seg     = $segs[$index];
                $baseUrl = "/".$seg.$baseUrl;
                ++$index;
            } while (($last > $index) && (false !== ($pos = strpos($path, $baseUrl))) && (0 != $pos));
        }

        // Does the baseUrl have anything in common with the request_uri?
        $requestUri = $this->getRequestUri();

        if ($baseUrl && 0 === strpos($requestUri, $baseUrl)) {
            // full $baseUrl matches
            return $baseUrl;
        }

        if ($baseUrl && 0 === strpos($requestUri, dirname($baseUrl))) {
            // directory portion of $baseUrl matches
            return rtrim(dirname($baseUrl), "/");
        }

        $truncatedRequestUri = $requestUri;
        if (($pos = strpos($requestUri, "?")) !== false) {
            $truncatedRequestUri = substr($requestUri, 0, $pos);
        }

        $basename = basename($baseUrl);
        if (empty($basename) || !strpos($truncatedRequestUri, $basename)) {
            // no match whatsoever; set it blank
            return "";
        }

        // If using mod_rewrite or ISAPI_Rewrite strip the script filename
        // out of baseUrl. $pos !== 0 makes sure it is not matching a value
        // from PATH_INFO or QUERY_STRING
        if ((strlen($requestUri) >= strlen($baseUrl)) && ((false !== ($pos = strpos($requestUri, $baseUrl))) && ($pos !== 0))) {
            $baseUrl = substr($requestUri, 0, $pos + strlen($baseUrl));
        }

        return rtrim($baseUrl, "/");
    }'
	rule: #methodDefinition.