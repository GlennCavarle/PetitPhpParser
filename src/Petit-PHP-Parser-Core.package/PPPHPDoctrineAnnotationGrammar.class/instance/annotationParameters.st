as yet unclassified
annotationParameters
	"Values ::= Array | Value {',' Value}*"
	^ annotationArray / (annotationValue separatedBy: comma)