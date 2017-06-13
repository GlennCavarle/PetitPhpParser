as yet unclassified
isAnnotationType: aPPPHPTypeNode
	^ (aPPPHPTypeNode superTypes
		select: [ :item | item nodeName fullyQualifiedTypeName = 'Doctrine\Common\Annotations\Annotation' ]) size > 0