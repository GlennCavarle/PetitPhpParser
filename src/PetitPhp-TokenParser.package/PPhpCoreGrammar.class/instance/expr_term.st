expr
expr_term
^ variable
/(self inRB: expr)
/ not_expr
/ new_expr
/ native_type 
/array_instantiation
/language_construct

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
	