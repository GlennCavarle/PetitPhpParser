doctrine2
testArrayInstantiationWithLiteralsInIdentifiers
	self
		parse: 'array(
                    ''name'' => $joinColumnAnnot->name,
                    ''referencedColumnName'' => $joinColumnAnnot->referencedColumnName,
                    ''unique'' => $joinColumnAnnot->unique,
                    ''nullable'' => $joinColumnAnnot->nullable,
                    ''onDelete'' => $joinColumnAnnot->onDelete,
                    ''onUpdate'' => $joinColumnAnnot->onUpdate,
                    ''columnDefinition'' => $joinColumnAnnot->columnDefinition,
                )'
		rule: #arrayInstantiation.