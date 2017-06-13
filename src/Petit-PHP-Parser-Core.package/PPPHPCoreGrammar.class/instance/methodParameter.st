grammar-statements
methodParameter
	"Helper method to simplify transformation: optional Type Hint followed by an expression. Since the expression makes the result non unique"
	^ (fullyQualifiedClassName / array / selfScope / static) optional , reference optional, dollar, variableName, 
		($= asParser trim, 
			(
				literal /
				arrayInstantiation / 
				((selfScope / namespaceIdentifier), doubleColon, validIdentifier) /
				constant
			)
		 ) optional, comment optional