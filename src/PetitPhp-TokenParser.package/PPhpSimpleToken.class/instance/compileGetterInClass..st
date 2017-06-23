compiling
compileGetterInClass: aClass
	aClass
		compile: self name , String cr , String tab , ' ^ ''' , self value , ''' asParser trim token'
		classified: self category