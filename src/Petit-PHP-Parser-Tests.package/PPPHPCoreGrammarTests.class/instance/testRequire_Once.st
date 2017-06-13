grammar-language-construct
testRequire_Once
	self
		parse: 'require_once'
		rule: #require_once.
	self
		parse: 'REQUIRE_Once '
		rule: #require_once.
