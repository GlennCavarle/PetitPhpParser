as yet unclassified
annotationInline
	| annotation |
	^ super annotationInline
		==> [ :token | 
			annotation := PPPHPAnnotation new.
			annotation nodeName: token second.
			annotation isMarker: true.
			annotation ]