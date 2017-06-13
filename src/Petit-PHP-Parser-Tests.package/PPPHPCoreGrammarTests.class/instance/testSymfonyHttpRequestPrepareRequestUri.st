symfony2
testSymfonyHttpRequestPrepareRequestUri
	self 
	parse: 'protected function prepareRequestUri()
    {
        $requestUri = "";

        if ($this->headers->has("X_REWRITE_URL") && false !== stripos(PHP_OS, "WIN")) {
            // check this first so IIS will catch
            $requestUri = $this->headers->get("X_REWRITE_URL");
        } elseif ($this->server->get("IIS_WasUrlRewritten") == "1" && $this->server->get("UNENCODED_URL") != "") {
            // IIS7 with URL Rewrite: make sure we get the unencoded url (double slash problem)
            $requestUri = $this->server->get("UNENCODED_URL");
        } elseif ($this->server->has("REQUEST_URI")) {
            $requestUri = $this->server->get("REQUEST_URI");
            // HTTP proxy reqs setup request uri with scheme and host [and port] + the url path, only use url path
            $schemeAndHttpHost = $this->getScheme()."://".$this->getHttpHost();
            if (strpos($requestUri, $schemeAndHttpHost) === 0) {
                $requestUri = substr($requestUri, strlen($schemeAndHttpHost));
            }
        } elseif ($this->server->has("ORIG_PATH_INFO")) {
            // IIS 5.0, PHP as CGI
            $requestUri = $this->server->get("ORIG_PATH_INFO");
            if ($this->server->get("QUERY_STRING")) {
                $requestUri .= "?".$this->server->get("QUERY_STRING");
            }
        }

        return $requestUri;
    }'
	rule: #methodDefinition.