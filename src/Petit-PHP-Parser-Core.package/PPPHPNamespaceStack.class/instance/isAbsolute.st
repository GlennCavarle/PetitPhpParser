accessing
isAbsolute
	self top ifNotNil: [ ^ self top isAbsolute ].
	^ false