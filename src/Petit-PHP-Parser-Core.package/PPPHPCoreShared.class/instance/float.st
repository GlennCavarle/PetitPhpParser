grammar-literals
float
	"Floating point numbers (also known as floats, doubles, or real numbers) can be specified 	using any of the following syntaxes:
		<?php
			$a = 1.234; 
			$b = 1.2e3; 
			$c = 7E-10;
		?>
	Formally:
		LNUM          [0-9]+
		DNUM          ([0-9]*[\.]{LNUM}) | ({LNUM}[\.][0-9]*)
		EXPONENT_DNUM [+-]?(({LNUM} | {DNUM}) [eE][+-]? {LNUM}) << changed this slightly

		The size of a float is platform-dependent, although a maximum of ~1.8e308 with a precision of roughly 14 decimal digits is a common value (the 64 bit IEEE format)."
		
	^($+ asParser / $- asParser) optional, (floatExponentDnum / floatDnum) trim.