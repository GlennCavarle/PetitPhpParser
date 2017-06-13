grammar-class
classFields
	^super classFields ==> [:token | 
		token deepFlatten select: [:item | item isKindOf: PPPHPFieldNode ] ] 