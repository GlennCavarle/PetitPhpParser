grammar-statements
testEscapedHTMLStatementShortTags
	self parse: '?>
	<p>Nested HTML</p>
	<?'
	rule: #escapedHTML