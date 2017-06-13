grammar-statements
functionBody
	"Parses the body of a method or function."
	^ self inCB: (innerStatement star).