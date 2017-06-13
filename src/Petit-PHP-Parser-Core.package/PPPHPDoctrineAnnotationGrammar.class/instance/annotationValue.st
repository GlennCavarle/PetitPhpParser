as yet unclassified
annotationValue
	"	Value           		::= PlainValue | FieldAssignment
		FieldAssignment 	::= FieldName '=' PlainValue
		FieldName       		::= identifier"
	^ annotationValueFieldAssignment / annotationPlainValue