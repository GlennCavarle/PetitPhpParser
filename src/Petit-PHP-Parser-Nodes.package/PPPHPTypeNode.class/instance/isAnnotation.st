accessing
isAnnotation
	self docBlockHasAnnotations
		ifTrue: [ 
			self docBlockAnnotations
				do: [ :item | 
					item marksAnnotation
						ifTrue: [ ^ true ] ] ].
	^ false