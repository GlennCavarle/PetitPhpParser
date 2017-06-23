expr
expr_without_variable
	^ ((list / short_array / variable) , t_assign , expr) 
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
	/ cast_expr