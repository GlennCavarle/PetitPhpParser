grammar-statements
interfaceDeclaration
	"Parses an interface definition."
	^	comment optional,
		interface, 
		fullyQualifiedClassName , 
		(extends, (fullyQualifiedClassName separatedBy: comma)) optional,
		interfaceBody.