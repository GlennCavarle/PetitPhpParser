symfony2
testSymfonyHttpRequestCreateFromGlobals
	self 
	parse: ' static public function createFromGlobals()
    {
        $request = new static($_GET, $_POST, array(), $_COOKIE, $_FILES, $_SERVER);

        if (0 === strpos($request->server->get("CONTENT_TYPE"), "application/x-www-form-urlencoded")
            && in_array(strtoupper($request->server->get("REQUEST_METHOD", "GET")), array("PUT", "DELETE", "PATCH"))
        ) {
            parse_str($request->getContent(), $data);
            $request->request = new ParameterBag($data);
        }

        return $request;
    }
'
	rule: #methodDefinition.