annotations
testAnnotationWrapperWithoutAnnotation
	self
		parse: '
		/**
		* A simple doc comment without annotation should be parsed as well.
		*/'
		rule: #annotationWrapper.