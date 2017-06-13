as yet unclassified
createFromToken: token
	"Add elements in reversed order!"
		| collection nameStack lastNode superNode |
		collection := OrderedCollection new.
		collection add: token third trimRight.
		token second reverseDo: [ :item | collection addFirst: item first ].
		token first ifNotNil: [
			collection addFirst: token first.
		].
		^ PPPHPNamespaceStack createFromCollection: collection.