grammar-literals
floatExponentDnum
	"See float for definition. [+-]?(({LNUM} | {DNUM}) [eE][+-]? {LNUM})"
	^(floatDnum / floatLnum),
	($e asParser caseInsensitive),
	($+ asParser / $- asParser) optional, 
	floatLnum.