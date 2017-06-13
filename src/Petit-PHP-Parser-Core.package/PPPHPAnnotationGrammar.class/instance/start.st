grammar
start

	^ ($* asParser trim optional , $@ asParser trim)
		==> [ :arg1 | arg1 second ] , annotationName
		, annotationSimpleValue optional