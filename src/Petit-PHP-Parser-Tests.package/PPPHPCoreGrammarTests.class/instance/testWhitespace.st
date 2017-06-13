grammar-keywords
testWhitespace
	self 
		parse: ' '
		rule: #whitespace.

	self 
		parse: '	' " a Tab"
		rule: #whitespace.
		
	self 
		parse: '
' " a Linebreak"
		rule: #whitespace.