grammar-namespace
namespaceAliases
	" Attention: the alias of the engine does not allow namespaces. The correct syntax is:
	'use' fullyQualifiedNamespace T_AS T_STRING "
			
	^ use, ((fullyQualifiedNamespace , (as, fullyQualifiedNamespace) optional) delimitedBy: comma).