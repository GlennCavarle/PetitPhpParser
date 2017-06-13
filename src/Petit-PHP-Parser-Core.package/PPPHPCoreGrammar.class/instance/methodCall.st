grammar
methodCall
	^ variable /  dynamicIdentifier / variableName , (self inRB: (expression separatedBy: comma))