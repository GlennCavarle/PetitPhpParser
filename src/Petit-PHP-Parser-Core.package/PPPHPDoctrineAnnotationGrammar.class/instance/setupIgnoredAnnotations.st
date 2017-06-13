accessing
setupIgnoredAnnotations
	| parsers |
	parsers := OrderedCollection new.
	self class ignoredAnnotationNames do: [:item |
		parsers add: (item asParser caseInsensitive, #word asParser not).
	].
	^ parsers reduce: [:p :next | p / next ]
