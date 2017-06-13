grammar-statements
interfaceBody
	^super interfaceBody ==> [:token | 
		|  props docBlock |
		props := OrderedCollection new.
		token second do: [ :item |
			(item isMemberOf: PPPHPMethodNode) ifTrue: [
					props add: item.
				].
			(item isMemberOf: Array) ifTrue: [
					props add: item first first.
				].
			].
		props
		]