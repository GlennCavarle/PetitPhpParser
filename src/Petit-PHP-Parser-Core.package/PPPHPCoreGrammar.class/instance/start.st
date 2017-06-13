grammar
start
	^ openingTag negate star flatten, openingTag , topStatements, (phpCloseTag, #any asParser star flatten) optional end