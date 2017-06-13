grammar-literals
testHeredocString
	"Test a heredoc string"
	self 
		parse: '<<<FLAG Babedi
		bupi dingsi bumsi.
		$var
		linebreaks
			indents 
			everything you can imagine before the
		FLAG'
		rule: #heredocString.