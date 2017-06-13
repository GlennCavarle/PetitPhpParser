grammar
arrayInstantiation
	"Array 'factory' method!
	The array allows a trailing comma."
	^array, (self inRB: (expression, comma optional, comment star)).