grammar-language-constructs
language_construct
	^ list / end_execution / print / file_include 
	/ ((t_eval / t_empty / t_isset), (self inRB: expr))