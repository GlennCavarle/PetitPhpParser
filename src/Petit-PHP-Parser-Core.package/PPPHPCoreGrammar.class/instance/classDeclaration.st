grammar-class
classDeclaration
	^ (comment optional , classModifiers optional , classKeyword
		, classIdentifier , (extends , fullyQualifiedClassName) optional
		,
			(implements
				, (fullyQualifiedClassName separatedBy: comma) withoutSeparators)
				optional , classBody) token