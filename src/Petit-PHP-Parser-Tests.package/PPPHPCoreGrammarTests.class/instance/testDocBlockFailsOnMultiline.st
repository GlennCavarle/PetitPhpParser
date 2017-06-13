grammar-comments
testDocBlockFailsOnMultiline
	self fail: '/**/ some more stuff */'
	rule: #docBlock