symfony2
testSymfonyHttpRequestGetContent
	self 
	parse: ' public function getContent($asResource = false)
    {
        if (false === $this->content || (true === $asResource && null !== $this->content)) {
            throw new \LogicException("getContent() can only be called once when using the resource return type.");
        }

        if (true === $asResource) {
            $this->content = false;

            return fopen("php://input", "rb");
        }

        if (null === $this->content) {
            $this->content = file_get_contents("php://input");
        }

        return $this->content;
    }'
	rule: #methodDefinition.