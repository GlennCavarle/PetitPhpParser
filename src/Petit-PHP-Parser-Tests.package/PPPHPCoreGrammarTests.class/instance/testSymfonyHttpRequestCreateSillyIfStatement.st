symfony2
testSymfonyHttpRequestCreateSillyIfStatement
	self 
	parse: 'if (false !== $pos = strpos($uri, "?")) {
                    $qs = substr($uri, $pos + 1);
                    parse_str($qs, $params);

                    $query = array_merge($params, $query);
                }'
	rule: #ifStatement.