annotations
testAnnotationWithParametersMixed
	self
		parse: '@Orm\Assert(type="integer", range={"min"=0,"max"=10}, true, {1, 4, 6})'
		rule: #start.