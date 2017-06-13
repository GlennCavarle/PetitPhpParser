symfony2
testSymfonyHttpRequestIsNoCache
	self 
	parse: ' public function isNoCache()
    {
        return $this->headers->hasCacheControlDirective("no-cache") || "no-cache" == $this->headers->get("Pragma");
    }'
	rule: #methodDefinition.