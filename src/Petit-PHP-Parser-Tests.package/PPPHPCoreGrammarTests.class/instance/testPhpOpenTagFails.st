grammar-keywords
testPhpOpenTagFails
	self 
		fail: '<?pop'
		rule: #phpOpenTag.
	self 
		fail: '<?'
		rule: #phpOpenTag.