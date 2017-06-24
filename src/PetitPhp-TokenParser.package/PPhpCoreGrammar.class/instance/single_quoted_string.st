grammar-strings
single_quoted_string
	^ $' asParser ,
		('\\' asParser / '\''' asParser / $' asParser negate) star flatten , $' asParser