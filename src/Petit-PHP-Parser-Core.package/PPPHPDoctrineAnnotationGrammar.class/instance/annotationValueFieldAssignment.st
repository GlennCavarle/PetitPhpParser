as yet unclassified
annotationValueFieldAssignment
		"	Value           		::= PlainValue | FieldAssignment
			FieldAssignment 	::= FieldName '=' PlainValue
			FieldName       		::= identifier"
		^  variableName , $= asParser trim, annotationPlainValue