symfony2
testSymfonyHttpRequestCreate
	self 
	parse: 'static public function create($uri, $method = "GET", $parameters = array(), $cookies = array(), $files = array(), $server = array(), $content = null)
    {
        $defaults = array(
            "SERVER_NAME"          => "localhost",
            "SERVER_PORT"          => 80,
            "HTTP_HOST"            => "localhost",
            "HTTP_USER_AGENT"      => "Symfony/2.X",
            "HTTP_ACCEPT"          => "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "HTTP_ACCEPT_LANGUAGE" => "en-us,en;q=0.5",
            "HTTP_ACCEPT_CHARSET"  => "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
            "REMOTE_ADDR"          => "127.0.0.1",
            "SCRIPT_NAME"          => "",
            "SCRIPT_FILENAME"      => "",
            "SERVER_PROTOCOL"      => "HTTP/1.1",
            "REQUEST_TIME"         => time(),
        );

        $components = parse_url($uri);
        if (isset($components["host"])) {
            $defaults["SERVER_NAME"] = $components["host"];
            $defaults["HTTP_HOST"] = $components["host"];
        }

        if (isset($components["scheme"])) {
            if ("https" === $components["scheme"]) {
                $defaults["HTTPS"] = "on";
                $defaults["SERVER_PORT"] = 443;
            }
        }

        if (isset($components["port"])) {
            $defaults["SERVER_PORT"] = $components["port"];
            $defaults["HTTP_HOST"] = $defaults["HTTP_HOST"].":".$components["port"];
        }

        if (isset($components["user"])) {
            $defaults["PHP_AUTH_USER"] = $components["user"];
        }

        if (isset($components["pass"])) {
            $defaults["PHP_AUTH_PW"] = $components["pass"];
        }

        if (!isset($components["path"])) {
            $components["path"] = "";
        }

        switch (strtoupper($method)) {
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

        $queryString = isset($components["query"]) ? html_entity_decode($components["query"]) : "";
        parse_str($queryString, $qs);
        if (is_array($qs)) {
            $query = array_replace($qs, $query);
        }

        $uri = $components["path"].($queryString ? "?".$queryString : "");

        $server = array_replace($defaults, $server, array(
            "REQUEST_METHOD"       => strtoupper($method),
            "PATH_INFO"            => "",
            "REQUEST_URI"          => $uri,
            "QUERY_STRING"         => $queryString,
        ));

        return new static($query, $request, array(), $cookies, $files, $server, $content);
    }
'
	rule: #methodDefinition.