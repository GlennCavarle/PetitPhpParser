tokens
keywords
	^ #(
		#(require require_once include include_once)
		#(namespace use as class interface trait extends implements function return var)
		#(__halt_compiler)
		#(switch endswitch)
		#(if endif else elseif)
		#(foreach endforeach)
		#(for endfor)
		#(while endwhile do) 
		#(declare enddeclare)
		#(case default continue break goto)
		#(try catch finally throw) 
		#(or and xor)
		#(yield)
		#(abstract static private protected public final)
		#(const global )
		#(echo print)
		#(new array)
		#(list empty unset isset callable clone die exit eval)
		#(insteadof instanceof )
	)flatten 
	collect: [ :each | 
			PPhpReservedToken
				name: (self withPrefix: each)
				value: each
				category: 'keywords' ]
		
	