grammar-class
condition
	^ comment star, (self inRB: expression), comment star ==> [:result | result second ]