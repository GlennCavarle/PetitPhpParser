grammar-class
classConstant
	^super classConstant ==> [:token | 
		| attributeNode attributeCollection |
		
		attributeCollection := (token third) collect: [:item | 
				(item = $,) ifFalse:[
					attributeNode := PPPHPFieldNode new isConstant: true.
					attributeNode nodeName: item second trimRight.
					attributeNode defaultValue: item fourth.
					attributeNode attributeValue: item fourth.
					attributeNode scope: (PPPHPScopeNode public).
					
					self setupDocBlockAndAnnotationsOn: attributeNode fromToken: token first.
					
					attributeNode
				].
			].
		attributeCollection := attributeCollection select: [:item | item notNil ].
		attributeCollection
		]