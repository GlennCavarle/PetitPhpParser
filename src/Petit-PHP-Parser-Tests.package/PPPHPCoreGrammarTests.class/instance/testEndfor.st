grammar-keywords
testEndfor
	self 
		parse: 'endfor' "result should be 'endfor' "
		rule: #endfor.

	self 
		parse: 'endFOR ' "result should be 'endFOR' "
		rule: #endfor.