grammar-language-construct
testInclude_Once
	self
		parse: 'include_once'
		rule: #include_once.
	self
		parse: 'INclude_Once '
		rule: #include_once.
