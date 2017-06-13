grammar
annotationArray
	""
	^ ${ asParser trim,
		(
			(
				annotationArrayKeyValuePair /
				annotationValue
			) delimitedBy: $, asParser trim
		) ,
	$} asParser trim