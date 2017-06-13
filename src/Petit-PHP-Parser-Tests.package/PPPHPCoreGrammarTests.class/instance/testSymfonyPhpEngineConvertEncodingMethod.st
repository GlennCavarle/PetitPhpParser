symfony2
testSymfonyPhpEngineConvertEncodingMethod
	self 
	parse: ' public function convertEncoding($string, $to, $from)
    {
        if (function_exists(''iconv'')) {
            return iconv($from, $to, $string);
        } elseif (function_exists(''mb_convert_encoding'')) {
            return mb_convert_encoding($string, $to, $from);
        }

        throw new \RuntimeException(''No suitable convert encoding function (use UTF-8 as your encoding or install the iconv or mbstring extension).'');
    }'
	rule: #methodDefinition.