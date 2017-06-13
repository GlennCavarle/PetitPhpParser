grammar-literals
simpleString
	^ $' asParser, 
			(
				(
					'\\' asParser / ('\''' asParser)
				) / 
				$' asParser negate 
			) star flatten,
			$' asParser