as yet unclassified
start
	"overwrite for transformations"
	|name annotation parameters|
	^ super start ==> [:token |
		annotation := PPPHPDoctrineAnnotation createFromNamespaceStack: token second.
		(((token size > 2)
			and: [ token third notNil ]) 
			and: [ token third second notNil ])
		ifTrue: [
			annotation parameters: token third second. 
		].
		annotation
	]