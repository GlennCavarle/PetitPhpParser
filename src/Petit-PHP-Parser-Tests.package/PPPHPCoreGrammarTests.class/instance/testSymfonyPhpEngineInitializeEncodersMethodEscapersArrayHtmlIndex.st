symfony2
testSymfonyPhpEngineInitializeEncodersMethodEscapersArrayHtmlIndex
	self 
	parse: '''html'' =>
                /**
                 * Runs the PHP function htmlspecialchars on the value passed.
                 *
                 * @param string $value the value to escape
                 *
                 * @return string the escaped value
                 */
                function ($value) use ($that)
                {
                    // Numbers and Boolean values get turned into strings which can cause problems
                    // with type comparisons (e.g. === or is_int() etc).
                    return is_string($value) ? htmlspecialchars($value, ENT_QUOTES | ENT_SUBSTITUTE, $that->getCharset(), false) : $value;
                }'
	rule: #expression.