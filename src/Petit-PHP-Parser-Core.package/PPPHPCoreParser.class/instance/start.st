grammar
start
	self cleanUpState.
	^ super start ==> [:result | result third ]