annotations
annotationDoctrine
	"Parses doc blocks, mainly to gather annotation information:

Annotation      		::= '@' AnnotationName ['(' [Values] ')']
AnnotationName  	::= QualifiedName | SimpleName
QualifiedName   	::= NameSpacePart '\' {NameSpacePart '\'}* SimpleName
NameSpacePart   	::= identifier
SimpleName      	::= identifier | null | false | true
Values          		::= Array | Value {',' Value}*

Value           		::= PlainValue | FieldAssignment
PlainValue      		::= integer|string|float|boolean|Array|Annotation
FieldAssignment 	::= FieldName '=' PlainValue
FieldName       		::= identifier
Array           		::= '{' ArrayEntry {',' ArrayEntry}* '}'
ArrayEntry      		::= Value | KeyValuePair
KeyValuePair    		::= Key '=' PlainValue
Key             		::= string | integer
		
		http://docs.doctrine-project.org/en/latest/reference/annotations-reference.html"
		^ PPPHPDoctrineAnnotationParser new