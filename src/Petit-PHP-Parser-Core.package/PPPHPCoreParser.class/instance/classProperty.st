grammar-class
classProperty
	^super classProperty ==> [:token | 
		| attributeNode attributeCollection scope isStatic |
		
		scope := token second select: [ :item | item isKindOf: PPPHPScopeNode].
		scope size > 0 ifTrue: [
				scope := scope first.
			] ifFalse: [
				scope := PPPHPScopeNode new.
			].
		isStatic := token second includes: 'static'.
		
		attributeCollection := token third collect: [ :item |
				(item = $, ) ifFalse: [
					
					attributeNode := PPPHPFieldNode new.
					attributeNode scope: scope.
					attributeNode isStatic: isStatic.
					attributeNode isConstant: false.
					attributeNode nodeName: item first second trimRight.
					
					self setupDocBlockAndAnnotationsOn: attributeNode fromToken: token first. 
					(item second notNil ) ifTrue: [
						attributeNode defaultValue: item second second.
					].
				attributeNode
				].
			] thenSelect: [ :item | item notNil ].
		attributeCollection
		]