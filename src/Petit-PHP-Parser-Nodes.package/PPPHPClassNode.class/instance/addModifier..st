accessing
addModifier: arg1
	arg1 ifNotNil: [ :arg2 | self modifiers add: arg2 ]