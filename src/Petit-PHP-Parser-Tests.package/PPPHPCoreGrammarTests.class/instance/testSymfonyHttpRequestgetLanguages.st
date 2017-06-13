symfony2
testSymfonyHttpRequestgetLanguages
	self 
	parse: ' public function getLanguages()
    {
        if (null !== $this->languages) {
            return $this->languages;
        }
 		$languages = $this->splitHttpAcceptHeader($this->headers->get("Accept-Language"));
        $this->languages = array();
        foreach ($languages as $lang => $q) {
            if (strstr($lang, "-")) {
                $codes = explode("-", $lang);
                if ($codes[0] == "i") {
                    // Language not listed in ISO 639 that are not variants
                    // of any listed language, which can be registered with the
                    // i-prefix, such as i-cherokee
                    if (count($codes) > 1) {
                        $lang = $codes[1];
                    }
                } else {
                    for ($i = 0, $max = count($codes); $i < $max; $i++) {
                        if ($i == 0) {
                            $lang = strtolower($codes[0]);
                        } else {
                            $lang .= "_".strtoupper($codes[$i]);
                        }
                    }
                }
            }

            $this->languages[] = $lang;
        }

        return $this->languages;
    }
'
	rule: #methodDefinition.