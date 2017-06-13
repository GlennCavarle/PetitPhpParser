symfony2
testSymfonyHttpRequestSplitHttpAcceptHeaderMethodForeachStatement
	self 
	parse: '
	foreach (array_filter(explode(",", $header)) as $value) {
            // Cut off any q-value that might come after a semi-colon
            if (preg_match("/;\s*(q=.*$)/", $value, $match)) {
                $q     = (float) substr(trim($match[1]), 2);
                $value = trim(substr($value, 0, -strlen($match[0])));
            } else {
                $q = 1;
            }

            if (0 < $q) {
                $values[trim($value)] = $q;
            }
        }'
	rule: #foreachStatement.