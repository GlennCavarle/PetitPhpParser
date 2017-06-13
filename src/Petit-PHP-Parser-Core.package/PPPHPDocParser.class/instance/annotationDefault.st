as yet unclassified
annotationDefault
	| annotation |
	^ super annotationDefault
		==> [ :token | 
			annotation := PPPHPAnnotation new.
			annotation nodeName: token first second.
			annotation content: token second.
			annotation isMarker: true.
			annotation ]