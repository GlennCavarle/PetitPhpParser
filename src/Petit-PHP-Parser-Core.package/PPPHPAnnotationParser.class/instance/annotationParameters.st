as yet unclassified
annotationParameters
	| tmp1 tmp3 tmp4 |
	^ super annotationParameters
		==> [ :arg1 | 
			| tmp5 tmp6 |
			tmp3 := arg1 select: [ :arg2 | arg2 ~= $, ].
			tmp5 := tmp3 size.
			1 to: tmp5 do: [ :tmp7 | 
				tmp6 := nil.
				tmp6 := tmp3 at: tmp7.
				(tmp6 isMemberOf: PPPHPParameterNode)
					ifFalse: [ tmp4 := PPPHPParameterNode new.
						tmp4
							nodeName: tmp7;
							attributeValue: tmp6.
						tmp3 at: tmp7 put: tmp4 ] ].
			tmp3 ]