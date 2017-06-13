symfony2
testSymfonyHttpRequestPreparePathinfo
	self 
	parse: ' protected function preparePathInfo()
    {
        $baseUrl = $this->getBaseUrl();

        if (null === ($requestUri = $this->getRequestUri())) {
            return "/";
        }

        $pathInfo = "/";

        // Remove the query string from REQUEST_URI
        if ($pos = strpos($requestUri, "?")) {
            $requestUri = substr($requestUri, 0, $pos);
        }

        if ((null !== $baseUrl) && (false === ($pathInfo = substr(urldecode($requestUri), strlen(urldecode($baseUrl)))))) {
            // If substr() returns false then PATH_INFO is set to an empty string
            return "/";
        } elseif (null === $baseUrl) {
            return $requestUri;
        }

        return (string) $pathInfo;
    }'
	rule: #methodDefinition.