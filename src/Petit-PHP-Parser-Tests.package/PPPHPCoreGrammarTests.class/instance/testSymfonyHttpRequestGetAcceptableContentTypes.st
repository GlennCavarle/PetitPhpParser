symfony2
testSymfonyHttpRequestGetAcceptableContentTypes
	self 
	parse: ' public function getAcceptableContentTypes()
    {
        if (null !== $this->acceptableContentTypes) {
            return $this->acceptableContentTypes;
        }

        return $this->acceptableContentTypes = array_keys($this->splitHttpAcceptHeader($this->headers->get("Accept")));
    }'
	rule: #methodDefinition.