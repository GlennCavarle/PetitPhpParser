symfony2
testSymfonyPhpEngineInitializeEncodersMethodEscapersArrayJsIndexEmptyClosure
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
                   
                }'
	rule: #expression.