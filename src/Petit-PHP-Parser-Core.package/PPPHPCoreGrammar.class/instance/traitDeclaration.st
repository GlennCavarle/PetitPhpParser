grammar-class
traitDeclaration
	^ comment optional , classModifiers optional , trait
		, classIdentifier , (extends , fullyQualifiedClassName) optional
		,
			(implements
				, (fullyQualifiedClassName separatedBy: comma) withoutSeparators)
				optional , classBody