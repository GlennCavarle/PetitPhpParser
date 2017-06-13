grammar-utility
reservedKeyword: name
	^ (name asParser caseInsensitive, identifierChar not) trim ==> [:result | result first]