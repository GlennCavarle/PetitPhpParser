tokens
operators
	^ {
	(#logicial_or -> 'or').
	(#logicial_xor -> 'xor').
	(#logical_and -> 'and').
	(#plus_equal -> '+=').
	(#minus_equal -> '-=').
	(#mul_equal -> '*=').
	(#div_equal -> '/=').
	(#concat_equal -> '.=').
	(#mod_equal -> '%=').
	(#and_equal -> '&=').
	(#or_equal -> '|=').
	(#xor_equal -> '^=').
	(#sl_equal -> '<<=').
	(#sr_equal -> '>>=').
	(#boolean_or -> '||').
	(#boolean_and -> '&&').
	(#is_equal -> '==').
	(#is_not_equal -> '!=').
	(#is_identical -> '===').
	(#is_not_identical -> '!==').
	(#is_smaller_or_equal -> '<=').
	(#is_greater_or_equal -> '>=').
	(#is_smaller -> '<').
	(#is_greater -> '>').
	(#spaceship -> '<=>').
	(#sl -> '<<').
	(#sr -> '>>').
	(#inc -> '++').
	(#dec -> '--').
	(#pow -> '**').
	(#pow_equal -> '**=').
	(#plus -> '+').
	(#minus -> '-').
	(#pipe -> '|').
	(#circumflex -> '^').
	(#star -> '*').
	(#slash -> '/').
	(#percent -> '%').
	(#tilde -> '~').
	(#not -> '!').
	(#questmark -> '?').
	} collect: [ :each | 
			PPhpSimpleToken
				name: (self withPrefix: each key)
				value: each value
				category: 'operators' ]