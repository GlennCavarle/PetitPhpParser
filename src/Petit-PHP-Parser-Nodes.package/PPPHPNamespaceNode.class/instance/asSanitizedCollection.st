as yet unclassified
asSanitizedCollection
	| collection |
	collection := OrderedCollection new.
	(self parentNamespace notNil and: [self parentNamespace isSeparator not ]) ifTrue: [
		collection addAll: self parentNamespace asSanitizedCollection.
	].
	collection add: self.
	^ collection
	