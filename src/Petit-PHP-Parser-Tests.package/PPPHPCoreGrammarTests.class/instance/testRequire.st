grammar-language-construct
testRequire
	self
		parse: 'require '
		rule: #require.
	self
		parse: 'REQUIRE '
		rule: #require.
