grammar-strings
dbl_quoted_string
	"sooper ugly hack because the pharo environment seems to transform the double quotes some times!"

	| delimiter |
	delimiter := $" asParser.	" / '''''' asParser"
	^ delimiter ,
		('\\' asParser / '\"' asParser / delimiter negate) star flatten , delimiter