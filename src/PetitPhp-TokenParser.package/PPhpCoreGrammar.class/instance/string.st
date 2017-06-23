grammar-strings
string
	^ ((#letter asParser / t_uscore) , (#word asParser / t_uscore ) star) flatten token