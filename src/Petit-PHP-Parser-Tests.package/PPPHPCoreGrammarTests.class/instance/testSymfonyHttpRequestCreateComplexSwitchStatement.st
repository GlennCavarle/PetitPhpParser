symfony2
testSymfonyHttpRequestCreateComplexSwitchStatement
	self 
	parse: ' switch (strtoupper($method)) {
            case "POST":
            case "PUT":
            case "DELETE":
                $defaults["CONTENT_TYPE"] = "application/x-www-form-urlencoded";
            case "PATCH":
                $request = $parameters;
                $query = array();
                break;
            default:
                $request = array();
                $query = $parameters;
                if (false !== $pos = strpos($uri, "?")) {
                    $qs = substr($uri, $pos + 1);
                    parse_str($qs, $params);

                    $query = array_merge($params, $query);
                }
                break;
        }
'
	rule: #switchStatement.