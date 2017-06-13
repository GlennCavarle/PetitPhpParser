grammar
useStatementWithOptions
	^ namespaceAliases
		, (self inCB: (variableName , as , methodModifiers , variableName , semicolon) star)