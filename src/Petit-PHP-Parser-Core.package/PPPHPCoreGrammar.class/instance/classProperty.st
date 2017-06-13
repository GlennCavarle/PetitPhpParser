grammar-class
classProperty
	"Plus optional is to keep the null"

	^ comment optional , (var / accessibility / static) plus optional
		, ((variable , ($= asParser trim , (literal / arrayInstantiation / expression)) optional) separatedBy: comma)