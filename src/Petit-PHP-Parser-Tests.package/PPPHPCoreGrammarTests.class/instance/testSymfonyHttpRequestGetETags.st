symfony2
testSymfonyHttpRequestGetETags
	self 
	parse: 'public function getETags()
    {
        return preg_split("/\s*,\s*/", $this->headers->get("if_none_match"), null, PREG_SPLIT_NO_EMPTY);
    }'
	rule: #methodDefinition.