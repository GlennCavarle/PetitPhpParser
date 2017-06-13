grammar-literals
testHeredocStringFails
	"Test a heredoc string"
	self 
		fail: '<<<FLAG Babedi
		bupi dingsi bumsi.
		$var
		linebreaks
			indents 
			everything you can imagine before the
		INVALID;'
		rule: #heredocString.