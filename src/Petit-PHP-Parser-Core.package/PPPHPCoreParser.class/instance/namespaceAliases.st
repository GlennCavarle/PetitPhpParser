grammar-namespace
namespaceAliases
	^super namespaceAliases ==> [:token | 
		| aliased alias |
		token second do: [ :item |
			( item = $, ) ifFalse: [
				aliased := item first.
				(item second isNil) ifTrue: [
					"There is no as statement so the engine aliases to the basename"
					aliased alias: (PPPHPNamespaceStack createFromCollection: { aliased getBaseName. }).
				] ifFalse: [
					aliased alias: item second second.
				].
				self aliasAdd: aliased.
			].
		].
		token
	].