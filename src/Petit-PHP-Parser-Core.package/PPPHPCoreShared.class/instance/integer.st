grammar-literals
integer
	"Integers can be specified in decimal (base 10), hexadecimal (base 16), or octal (base 8) notation, optionally preceded by a sign (- or +).
		
		decimal     : [1-9][0-9]* | 0

		hexadecimal : 0[xX][0-9a-fA-F]+

		octal: 		0[0-7]+

		integer: 	[+-]?decimal
            			| [+-]?hexadecimal
            			| [+-]?octal"

	^($+ asParser trim / $- asParser trim ) optional, 
	(hexadecimalInteger / octalInteger / decimalInteger ) trim flatten.