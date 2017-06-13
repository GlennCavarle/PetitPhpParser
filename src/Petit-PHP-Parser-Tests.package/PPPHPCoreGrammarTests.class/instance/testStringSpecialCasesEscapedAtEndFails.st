grammar-literals
testStringSpecialCasesEscapedAtEndFails
	"this one seems to be important! the string should stop before the comma"
	self
		fail: '"1234\\",'
		rule: #parsedString.