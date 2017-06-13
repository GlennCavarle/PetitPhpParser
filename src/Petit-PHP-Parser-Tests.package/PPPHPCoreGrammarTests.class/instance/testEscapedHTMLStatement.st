grammar-statements
testEscapedHTMLStatement
	self parse: '?>
	<p>Nested HTML</p>
	<?php'
	rule: #innerStatement