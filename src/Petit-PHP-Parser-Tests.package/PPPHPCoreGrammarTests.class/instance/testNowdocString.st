grammar-literals
testNowdocString
	"Test a single quoted string"
	self 
		parse: '<<<','''FLAG''',' Babedi
		bupi dingsi bumsi. 
		FLAG'
		rule: #nowdocString.