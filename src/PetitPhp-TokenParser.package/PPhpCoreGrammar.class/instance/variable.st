variables
variable
	^ ((callable_variable / static_member / (self inRB:expr) / dereferencable_scalar) , property_access optional) 
	