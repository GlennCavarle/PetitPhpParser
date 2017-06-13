symfony2
testSymfonyHttpRequestgetLanguagesForeachStatementIfElseForStatement
	self 
	parse: 'for ($i = 0, $max = count($codes); $i < $max; $i++) {
                        if ($i == 0) {
                            $lang = strtolower($codes[0]);
                        } else {
                            $lang .= "_".strtoupper($codes[$i]);
                        }
                    }'
	rule: #forStatement.