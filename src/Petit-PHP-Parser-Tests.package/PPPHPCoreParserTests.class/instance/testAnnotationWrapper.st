annotations
testAnnotationWrapper
	self
		parse: '
		/**
		* Some stuff bla bla bla
		* @Orm\Assert()
		*/'
		rule: #annotationWrapper.