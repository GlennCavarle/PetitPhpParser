annotations
testAnnotationSymfony2Routing
	self
		parse: '@Route("/{id}", requirements={"id" = "\d+"}, defaults={"foo" = "bar"})'
		rule: #start.