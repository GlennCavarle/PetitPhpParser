grammar-strings
heredoc_string
	
	"String in heredoc format: behaves like a double quoted string, means it is interpreted:
$str = <<<EOD --> this is a label delimiter
Example of string
spanning multiple lines
using heredoc syntax.
EOD; --> this is a label delimiter (no spaces before allowed! requires a linebreak afterwards)
dont know if it makes sense to implement that in a strict way."

	"self flag: 'Todo: Stack based parsing!'."

	| flag |
	flag := PPUnresolvedParser new.
	^ ('<<<' asParser trim,
			(string trim
				==> [ :result | 
					flag def: result trimRight asParser.
					result
					]) 
				, flag negate star flatten , flag)