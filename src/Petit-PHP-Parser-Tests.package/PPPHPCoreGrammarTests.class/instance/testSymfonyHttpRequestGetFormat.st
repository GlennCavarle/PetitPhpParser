symfony2
testSymfonyHttpRequestGetFormat
	self 
	parse: 'public function getFormat($mimeType)
    {
        if (false !== $pos = strpos($mimeType, ";")) {
            $mimeType = substr($mimeType, 0, $pos);
        }

        if (null === static::$formats) {
            static::initializeFormats();
        }

        foreach (static::$formats as $format => $mimeTypes) {
            if (in_array($mimeType, (array) $mimeTypes)) {
                return $format;
            }
        }

        return null;
    }'
	rule: #methodDefinition.