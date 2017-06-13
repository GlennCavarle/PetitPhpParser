grammar-statements
testClassDeclarationComplexWithDocBlocks
	super testClassDeclarationComplexWithDocBlocks.
	
	self assert: (result isMemberOf: PPPHPClassNode).
	self assert: result nodeName equals: 'Role'.
	self assert: (result superTypes isMemberOf: OrderedCollection).
	self assert: result superTypes size equals: 0.
	self assert: (result interfaces isMemberOf: OrderedCollection).
	self assert: result interfaces size equals: 0.

	
	self assert: result docBlock equals: '/**
 * Users role to provide permissions.
 * @ORM\Entity()
 * @ORM\Lazy(true)
 */
'.
	self assert: result docBlockHasAnnotations.
	self assert: result docBlockAnnotations first hasParameters not.
	self assert: (result docBlockAnnotations first fullyQualifiedTypeName = 'ORM\Entity').
	self assert: result docBlockAnnotations second parameters notNil.
	self assert: result docBlockAnnotations second parameters first attributeValue equals: 'true'.
	
	self assert: result parentNamespace isNil.
	self assert: result modifiers size = 0.
	
	self assert: result attributes size = 2.
	self assert: result attributes second hasDocBlock not.
	
	self assert: result attributes first docBlockHasAnnotations.
	self assert: result attributes first docBlockAnnotations size = 2.
	
	
	self assert: result behaviouralEntities size = 5.
	self assert: result behaviouralEntities last hasDocBlock.
	self assert: result behaviouralEntities last docBlockHasAnnotations.
	self assert: result behaviouralEntities last docBlockAnnotations first parameters first attributeValue second = 'ForbiddenAccessContextListener'.