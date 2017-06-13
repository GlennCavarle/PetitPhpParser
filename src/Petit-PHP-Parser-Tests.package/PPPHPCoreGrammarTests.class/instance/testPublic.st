grammar-keywords
testPublic
	self 
		parse: 'public' "result should be 'public' "
		rule: #public.

	self 
		parse: ' PuBLIC ' "result should be 'PuBLIC' "
		rule: #public.