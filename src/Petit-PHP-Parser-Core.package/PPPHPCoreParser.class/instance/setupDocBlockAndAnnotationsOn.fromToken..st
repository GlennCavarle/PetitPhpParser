as yet unclassified
setupDocBlockAndAnnotationsOn: arg1 fromToken: arg2
	| tmp1 tmp2 tmp3 |
	(tmp3 := arg2) ifNotNil: [ arg1 docBlock: tmp3 content ].
	arg1 hasDocBlock
		ifTrue: [ tmp2 := annotationWrapper end parse: arg1 docBlock.
			tmp2 isPetitFailure
				ifFalse: [ arg1 docBlockAnnotations: tmp2.
					arg1 docBlockAnnotations
						do: [ :arg3 | 
							arg3 isResolved
								ifFalse: [ arg3 namespaceStack: (self aliasesResolve: arg3 namespaceStack) ] ] ] ]