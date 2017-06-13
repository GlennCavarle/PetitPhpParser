grammar-literals
octalInteger 
	"See integer for definition."
	^$0 asParser, (PPPredicateObjectParser between: $0 and: $7) plus.