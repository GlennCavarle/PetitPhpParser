doctrine2
testDoctrineLexerMethodScan
	self
		parse: 'protected function scan($input)
    {
        static $regex;

        if ( ! isset($regex)) {
            $regex = ''/('' . implode('')|('', $this->getCatchablePatterns()) . '')|'' 
                   . implode(''|'', $this->getNonCatchablePatterns()) . ''/i'';
        }

        $flags = PREG_SPLIT_NO_EMPTY | PREG_SPLIT_DELIM_CAPTURE | PREG_SPLIT_OFFSET_CAPTURE;
        $matches = preg_split($regex, $input, -1, $flags);

        foreach ($matches as $match) {
            // Must remain before ''value'' assignment since it can change content
            $type = $this->getType($match[0]);
            
            $this->tokens[] = array(
                ''value'' => $match[0],
                ''type''  => $type,
                ''position'' => $match[1],
            );
        }
    }'
rule: #methodDefinition.