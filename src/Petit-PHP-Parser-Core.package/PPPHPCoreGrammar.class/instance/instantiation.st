grammar
instantiation
	^ newKeyword, ((staticScope / selfScope / fullyQualifiedClassName, (self inRB: expression) optional) / expression)