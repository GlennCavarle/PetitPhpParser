grammar
start
	self cleanUpState.
	^ super start ==> [:result | 
		PPPHPScriptNode new children: result third asOrderedCollection ]