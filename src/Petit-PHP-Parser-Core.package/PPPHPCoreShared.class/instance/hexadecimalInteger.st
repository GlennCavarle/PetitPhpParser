grammar-literals
hexadecimalInteger 
	"See the definition in integer"
	^$0 asParser, ($x asParser caseInsensitive), #hex asParser plus.