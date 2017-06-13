grammar-class
comment
	^ super comment ==> [ :content | PPPHPFragmentNode new content: content ]