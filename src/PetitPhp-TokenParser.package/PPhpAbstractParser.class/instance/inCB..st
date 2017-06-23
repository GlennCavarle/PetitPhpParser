grammar-utility
inCB: aParser
	"Wrapper method for between curly brackets. The inner parser by default gets optional."
	^ self parser: aParser between: ${ and: $}.   