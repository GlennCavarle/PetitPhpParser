grammar-literals
decimalInteger 
	""
	^ $0 asParser / ((PPPredicateObjectParser between: $1 and: $9), #digit asParser star).