as yet unclassified
initializeTags
	| tagList |
	tagList := Dictionary new.
	self defaultTags do: [:tagName |
			| lowerTagname keywordParser|
			lowerTagname := tagName asLowercase.
			keywordParser := tagName asParser caseInsensitive.
			tagList at: lowerTagname put: keywordParser.
		].
	^ tagList