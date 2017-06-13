accessing
pop
	"includes unlinking"
	self isEmpty ifFalse: [ self top parentNamespace: nil ].
	super pop.
	