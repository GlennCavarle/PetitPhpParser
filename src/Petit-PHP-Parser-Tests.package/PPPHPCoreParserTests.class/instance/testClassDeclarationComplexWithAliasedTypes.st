grammar-statements
testClassDeclarationComplexWithAliasedTypes
	| node |
	super testClassDeclarationComplexWithAliasedTypes.
	node := result last. 
	
	self assert: (node isMemberOf: PPPHPClassNode).
	self assert: (node superTypes first fullyQualifiedTypeName = '\ArrayIterator').
	self assert: (node superTypes first hasAlias not).
	self assert: (node behaviouralEntities size = 2).
	self assert: (node attributes size = 1).
	
	self assert: (node docBlock = '/**
 		* Users role to provide permissions.
 		* @ORM\Entity()
 		*/
		').
	self assert: (node docBlockHasAnnotations).
	self assert: (node docBlockAnnotations size = 1).
	self assert: (node docBlockAnnotations first namespaceStack hasAlias).
	self assert: (node docBlockAnnotations first fullyQualifiedTypeName = 'Doctrine\Common\Mapper\Entity').
	
	self assert: (node attributes first docBlockHasAnnotations ).
	self assert: (node attributes first docBlockAnnotations size = 2 ).
	
	self assert: (node attributes first docBlockAnnotations first namespaceStack hasAlias).
	self assert: (node attributes first docBlockAnnotations first namespaceStack alias flattenNamespace = 'ORM\Collected').
	self assert: (node attributes first docBlockAnnotations first fullyQualifiedTypeName = 'Doctrine\Common\Mapper\Collected').
	
	self assert: (node attributes first docBlockAnnotations second namespaceStack hasAlias).
	self assert: (node attributes first docBlockAnnotations second namespaceStack alias flattenNamespace = 'Assert\NotNull').
	self assert: (node attributes first docBlockAnnotations second fullyQualifiedTypeName = 'Doctrine\Common\Assertions\NotNull').
	
	self assert: (node interfaces first hasAlias ).
	self assert: (node interfaces first alias flattenNamespace = 'Iterator' ).
	self assert: (node interfaces first fullyQualifiedTypeName = 'Rcky\Collections\Iterator' ).
	
	self assert: (node interfaces second hasAlias ).
	self assert: (node interfaces second alias flattenNamespace = 'Collections\Walker' ).
	self assert: (node interfaces second fullyQualifiedTypeName = 'Rcky\Collections\Walker' ).
	
	self assert: (node behaviouralEntities first docBlockHasAnnotations not).
	self assert: (node behaviouralEntities first parameters size = 1).
	self assert: (node behaviouralEntities first parameters first hasTypeHint).
	self assert: (node behaviouralEntities first parameters first typeHint hasAlias).
	self assert: (node behaviouralEntities first parameters first typeHint alias flattenNamespace = 'Iterator').
	self assert: (node behaviouralEntities first parameters first typeHint fullyQualifiedTypeName = 'Rcky\Collections\Iterator').
	
	self assert: (node behaviouralEntities second docBlockHasAnnotations).
	self assert: (node behaviouralEntities second hasParameters not).
	self assert: (node behaviouralEntities second docBlockAnnotations size = 1).
	self assert: (node behaviouralEntities second docBlockAnnotations first namespaceStack hasAlias).
	self assert: (node behaviouralEntities second docBlockAnnotations first namespaceStack alias flattenNamespace = 'Assert\IsType').
		self assert: (node behaviouralEntities second docBlockAnnotations first fullyQualifiedTypeName  = 'Doctrine\Common\Assertions\IsType').