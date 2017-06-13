as yet unclassified
annotationInline
	^ (${ asParser trim, annotationMarker, $} asParser trim) ==> [:token | token second ]