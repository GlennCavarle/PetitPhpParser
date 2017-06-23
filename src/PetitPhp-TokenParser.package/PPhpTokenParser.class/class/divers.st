tokens
divers
	^ {
	(#int -> 'int').
	(#string -> 'string').
	(#double -> 'double').
	(#object -> 'object').
	(#bool -> 'bool').
	(#null -> 'null').
	(#colon -> ':').
	(#ns_separator -> '\').
	(#assign -> '=').
	(#dbl_colon -> '::').
	(#semicolon -> ';').
	(#dbl_arrow -> '=>').
	(#amp -> '&').
	(#backtick -> '`').
	(#coalesce -> '??').
	(#dollar -> '$').
	(#dot -> '.').
	(#comma -> ',').
	(#ellipsis -> '...').
	(#uscore -> '_').
	(#php_close_tag -> '?>').
	(#php_open_tag -> '<?php').
	(#php_short_echo -> '<?=').
	(#php_short_open_tag -> '<?')}
		collect: [ :each | 
			PPhpSimpleToken
				name: (self withPrefix: each key)
				value: each value
				category: 'divers' ]