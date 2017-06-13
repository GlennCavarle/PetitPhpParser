grammar-statements
interfaceBody
	" interfaceBody contains:
		- method headers
		- comments
		- constants
		
		since php reflection allows to access the docBlock of a method or a property, it makes sense to group docBlock comments(multiLineComment) and the method/property together.
		
		Example:
		interface identifier {
			/*
		 	* A Doc Block
		 	*/
			method Definition(); //without Body
	}"
	^ comment star, (self inCB:
			( methodDefinition / (classConstant , semicolon) / comment ) star) ==> [:result | result second ]