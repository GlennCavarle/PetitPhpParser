accessing
initialize
	super initialize.
	scope := PPPHPScopeNode new. "default scope"
	parameters := OrderedCollection new.