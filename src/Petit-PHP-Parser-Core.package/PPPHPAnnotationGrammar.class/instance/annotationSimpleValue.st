accessing
annotationSimpleValue
	^ (#word asParser plus 
		, ('*/' asParser / #newline asParser) negate star flatten trim)
		flatten