symfony2
testSymfonyPhpEngineInitializeEncodersMethodEscapersArrayJsIndex
	self 
	parse: '''js'' =>
                /**
                 * A function that escape all non-alphanumeric characters
                 * into their \xHH or \uHHHH representations
                 *
                 * @param string $value the value to escape
                 * @return string the escaped value
                 */
                function ($value) use ($that)
                {
                    if (''UTF-8'' != $that->getCharset()) {
                        $value = $that->convertEncoding($value, ''UTF-8'', $that->getCharset());
                    }

                    $callback = function ($matches) use ($that)
                    {
                        $char = $matches[0];

                        // \xHH
                        if (!isset($char[1])) {
                            return ''\\x''.substr(''00''.bin2hex($char), -2);
                        }

                        // \uHHHH
                        $char = $that->convertEncoding($char, ''UTF-16BE'', ''UTF-8'');

                        return ''\\u''.substr(''0000''.bin2hex($char), -4);
                    };

                    if (null === $value = preg_replace_callback(''#[^\p{L}\p{N} ]#u'', $callback, $value)) {
                        throw new \InvalidArgumentException(''The string to escape is not a valid UTF-8 string.'');
                    }

                    if (''UTF-8'' != $that->getCharset()) {
                        $value = $that->convertEncoding($value, $that->getCharset(), ''UTF-8'');
                    }

                    return $value;
                }'
	rule: #expression.