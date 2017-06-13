as yet unclassified
annotationParameters
	"Three cases:
		1. is named
		2. is a literal
		3. is an array
		4. is an annotation
	"
	| params namedParams param|
	^ super annotationParameters ==> [ :token |
			params := token select: [ :item |
					(item ~= $,)
				].
			1 to: params size do: [ :index |
					|item|
					item := params at: index.
					"Named parameters are already resolved!"
					(item isMemberOf: PPPHPParameterNode) ifFalse: [
						param := PPPHPParameterNode new.
						param nodeName: index.
						param attributeValue: item.
						params at: index put: param. 
					].
				].
			params
		]