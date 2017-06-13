grammar-statements
methodBody
	"Parses the body of a method or function."
	^ comment star, (self inCB: (innerStatement star) trim) ==> [:result | result second ]