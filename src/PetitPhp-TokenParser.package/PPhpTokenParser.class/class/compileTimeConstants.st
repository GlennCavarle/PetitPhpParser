tokens
compileTimeConstants
	^ #(__CLASS__ __TRAIT__ __DIR__ __FILE__ __FUNCTION__ __LINE__ __METHOD__ __NAMESPACE__)
		collect: [ :each | 
			PPhpSimpleToken
				name: (self withPrefix: each)
				value: each
				category: 'compile-time constants' ]