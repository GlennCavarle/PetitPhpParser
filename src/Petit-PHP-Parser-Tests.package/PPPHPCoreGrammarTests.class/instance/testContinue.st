grammar-keywords
testContinue
	self 
		parse: 'continue' "result should be 'continue' "
		rule: #continue.

	self 
		parse: 'CONtinue ' "result should be 'CONtinue' "
		rule: #continue.