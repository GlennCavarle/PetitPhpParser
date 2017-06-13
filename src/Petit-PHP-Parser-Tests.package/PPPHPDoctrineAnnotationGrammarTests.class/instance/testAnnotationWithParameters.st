annotations
testAnnotationWithParameters
	self
		parse: '@Orm\Assert(type="integer", range={"min"=0,"max"=10}, true)'
		rule: #start.