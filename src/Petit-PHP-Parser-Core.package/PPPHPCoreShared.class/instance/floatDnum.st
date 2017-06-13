grammar-literals
floatDnum
	^((floatLnum, dot, string not, #digit asParser star) ==> [:result | result copyWithout: nil ]) / (#digit asParser star, dot, floatLnum)