annotations
annotationWrapper
	"Allows parsing annotations in doc block comments"

	| endDelimiter annotations dummyemail |
	endDelimiter := '*/' asParser trim.
	dummyemail := $< asParser , $> asParser negate star , $> asParser. "avoid the annotation to match email addresses embraced in < >"
	^ ((dummyemail / annotation / endDelimiter negate) star , endDelimiter)
		==> [ :token | 
			annotations := token first select: [ :item | item isKindOf: PPPHPAnnotation ].
			annotations ]