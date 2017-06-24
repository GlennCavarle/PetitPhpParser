grammar-array
array_access
	^ ((self inSB: optional_expr) / (self inCB: expr)) plus