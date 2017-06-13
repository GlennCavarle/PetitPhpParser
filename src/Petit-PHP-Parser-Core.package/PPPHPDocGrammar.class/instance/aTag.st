as yet unclassified
aTag
	^ ((tags reduce: [ :a :b | a / b ]), #word asParser not) ==> [ :token | token first ]