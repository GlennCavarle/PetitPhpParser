grammar-literals
nowdocString
	"String in nowdoc format"
	|flag|
	
	flag := PPUnresolvedParser new.
	^'<<<' asParser trim, 
	(string trim ==> [:result | flag def: (result at: 2) asParser. (result at: 2)]),
	flag negate star flatten , flag.