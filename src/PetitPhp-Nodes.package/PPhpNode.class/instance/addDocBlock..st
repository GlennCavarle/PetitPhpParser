adding
addDocBlock: aDocBlock
	self assert: (aDocBlock isKindOf: PPhpDocBlockNode).
	aDocBlock parent: self.
	self docBlocks add: aDocBlock