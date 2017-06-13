grammar-statements
testEscapedHTML
	self parse: '?>
	<p>Nested HTML</p>
	<?php'
	rule: #escapedHTML