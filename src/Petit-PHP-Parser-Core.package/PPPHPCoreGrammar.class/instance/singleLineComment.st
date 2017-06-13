grammar
singleLineComment
	"// comment and #shell style comment"
	^((('//' asParser / '#' asParser), (eol / phpCloseTag) negate star) flatten) trim.