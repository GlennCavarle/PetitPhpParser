statements
initializeKeywords
	| tmp1 |
	keywords := Dictionary new.
	tmp1 := #('abstract' 'as' 'break' 'case' 'catch' 'class' 'trait' 'clone' 'const' 'continue' 'declare' 'default' 'do' 'else' 'elseif' 'enddeclare' 'endfor' 'endforeach' 'endif' 'endswitch' 'endwhile' 'extends' 'final' 'for' 'foreach' 'function' 'global' 'goto' 'if' 'implements' 'include' 'include_once' 'instanceof' 'interface' 'namespace' 'parent' 'private' 'protected' 'public' 'require' 'require_once' 'static' 'self' 'switch' 'throw' 'try' 'use' 'var' 'while' 'die' 'echo' 'empty' 'exit' 'eval' 'isset' 'list' 'return' 'print' 'unset' 'null' 'true' 'false' 'new').
	tmp1
		do: [ :arg1 | 
			keywords
				at: arg1
				put:
					(PPUnresolvedParser
						named: 'keyword' , arg1 first asUppercase asString , arg1 allButFirst) ].
	keywords
		keysAndValuesDo: [ :arg2 :arg3 | 
			(keywords at: arg2)
				def:
					(arg2 asParser caseInsensitive , (#word asParser / $_ asParser) not)
						token ]