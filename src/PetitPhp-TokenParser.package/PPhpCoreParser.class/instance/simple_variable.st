variables
simple_variable
	^ super simple_variable ==> [ :arg1 | PPhpSimpleVariable fromToken: arg1 second ]