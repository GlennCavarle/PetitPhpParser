accessing
alias
	self namespaceStack ifNotNil: [
		^ self namespaceStack alias.
	].
	^ nil.