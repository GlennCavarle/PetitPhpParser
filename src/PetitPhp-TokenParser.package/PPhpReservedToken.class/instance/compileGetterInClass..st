compiling
compileGetterInClass: aClass
	aClass
		compile: self name , String cr , String tab , ' ^ (self reservedKeyword:''' , self value , ''') token'
		classified: self category