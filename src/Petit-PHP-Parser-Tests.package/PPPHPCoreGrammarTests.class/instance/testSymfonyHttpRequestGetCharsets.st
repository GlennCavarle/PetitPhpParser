symfony2
testSymfonyHttpRequestGetCharsets
	self 
	parse: 'public function getCharsets()
    {
        if (null !== $this->charsets) {
            return $this->charsets;
        }

        return $this->charsets = array_keys($this->splitHttpAcceptHeader($this->headers->get("Accept-Charset")));
    }'
	rule: #methodDefinition.