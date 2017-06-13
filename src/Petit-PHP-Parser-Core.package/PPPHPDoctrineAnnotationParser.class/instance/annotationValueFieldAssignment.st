as yet unclassified
annotationValueFieldAssignment
	| paramNode |
	^ super annotationValueFieldAssignment ==> [ :token |
			paramNode := PPPHPParameterNode new.
			paramNode nodeName: token first.
			paramNode attributeValue: token third.
			paramNode
		]