grammar
start
	^ ($* asParser trim optional, $@ asParser trim) ==> [:result | result second ],
	annotationName, ($( asParser trim, annotationParameters optional , $) asParser trim) optional