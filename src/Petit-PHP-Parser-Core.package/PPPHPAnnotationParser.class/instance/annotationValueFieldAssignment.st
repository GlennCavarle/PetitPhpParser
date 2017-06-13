as yet unclassified
annotationValueFieldAssignment
	| tmp2 |
	^ super annotationValueFieldAssignment
		==> [ :arg1 | 
			tmp2 := PPPHPParameterNode new.
			tmp2
				nodeName: arg1 first;
				attributeValue: arg1 third.
			tmp2 ]