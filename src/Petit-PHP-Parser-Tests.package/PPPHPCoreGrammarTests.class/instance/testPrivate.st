grammar-keywords
testPrivate
	self 
		parse: 'private' "result should be 'private' "
		rule: #private.

	self 
		parse: ' pRIVAte ' "result should be ' pRIVAte ' "
		rule: #private.