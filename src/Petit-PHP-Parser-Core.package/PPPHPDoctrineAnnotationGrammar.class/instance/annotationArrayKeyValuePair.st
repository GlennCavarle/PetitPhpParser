as yet unclassified
annotationArrayKeyValuePair
	"Array           		::= '{' ArrayEntry {',' ArrayEntry}* '}'
ArrayEntry      		::= Value | KeyValuePair
KeyValuePair    		::= Key '=' PlainValue
Key             		::= string | integer"
	^ string / integer,
	$= asParser trim,
	annotationPlainValue 