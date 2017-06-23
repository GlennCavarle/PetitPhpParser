grammar-array
possible_array_pair
	"array_pair in documentation"
	
	^ (expr, (t_dbl_arrow, (expr / variable_ref / list)) optional) / variable_ref / list.
	