as yet unclassified
initialize
	super initialize.
	docBlock := nil.
	parent := nil.
	children := OrderedCollection new.
	isFragment := false.