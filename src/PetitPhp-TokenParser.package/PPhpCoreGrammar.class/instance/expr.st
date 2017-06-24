expr
expr
	 ^ PPExpressionParser new
		term: expr_term trim ==> [:result | result first];
		group: [:g | 
			g left: math_operator do: [ :a :op :b | { a. op. b } ] .
			g left: t_dot do: [ :a :op :b | { a. op. b } ]. "concatenation"	
		];
		group: [:g | 
			g left: comparison_operator do: [ :a :op :b | { a. op. b } ] .
		];
		group: [:g | 
			g postfix: inc_dec_operator do:[ :a :op | {a. op.}].
			g prefix: inc_dec_operator do:[:op :a | {op. a.}].
		];
		group: [:g | 
			g right: assignment_operator do: [ :a :op :b | { a. op. b } ] .
		];
		group: [:g | 
			g prefix: cast_expr do: [:op :a | {op. a.}].
		];
		group: [:g | 
			g prefix: t_tilde do: [:op :a | {op. a.}].
			g prefix: t_minus  do: [:op :a | {op. a.}].
		];
		group: [:g | 
			g prefix: t_arobase do: [:op :a | {op. a.}].		
		]
	"unary_expr / binary_expr / cast_expr
	 (list / short_array / variable), ( t_assign , expr) optional
	/ ((list / short_array / variable) , t_assign , expr) 
	/ (variable, t_assign, variable_ref)
	/ (t_clone, expr)
	/ (variable, assignment_operator , expr)
	/ (variable, inc_dec_operator)
	/ (inc_dec_operator, variable)
	/ (expr, comparison_operator, expr)
	/ (expr, math_operator, expr)
	/ (expr, t_instanceof , expr)
	/ (self inRB: expr)
	/ new_expr
	/ (expr, t_questmark, expr optional , t_colon , expr )
	/ (expr, t_coalesce , expr)
	"
	
	
	