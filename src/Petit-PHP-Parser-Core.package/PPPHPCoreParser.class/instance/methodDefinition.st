grammar-statements
methodDefinition
	^ super methodDefinition
		==> [ :arg1 | 
			| tmp1 tmp2 tmp3 tmp4 tmp5 |
			tmp1 := PPPHPMethodNode new.
			tmp5 := arg1 parsedValue.
			tmp1
				isReferenced: tmp5 second third = '&';
				startLine: arg1 line;
				nodeName: tmp5 second fourth;
				isAbstract: (tmp5 second first includes: 'abstract');
				isStatic: (tmp5 second first includes: 'static');
				isFinal: (tmp5 second first includes: 'final').
			self setupDocBlockAndAnnotationsOn: tmp1 fromToken: tmp5 first.
			(tmp5 second first
				select: [ :arg2 | arg2 isMemberOf: PPPHPScopeNode ])
				do: [ :arg3 | tmp1 scope: arg3 ].
			tmp4 := tmp5 second fifth second.
			tmp2 := tmp4 ifNil: [ OrderedCollection new ] ifNotNil: [ tmp4 ].
			tmp1
				parameters: (tmp2 select: [ :arg4 | arg4 isMemberOf: PPPHPParameterNode ]).
			tmp5 third = $;
				ifFalse: [ tmp1 body: tmp5 second second ].
			tmp1 ]