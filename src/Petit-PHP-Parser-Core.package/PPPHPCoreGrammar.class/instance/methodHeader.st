grammar
methodHeader
	^ methodModifiers, function, reference optional, variableName,
		(
			self inRB: 
				( (self methodParameter separatedBy: comma)/(comment ==> [:result | Array new ]))
		)