grammar-statements
testClassDeclarationWithAliasesForInheritancesAndInterfaces
	| classNode |
	self 
		parse:'
		<?php
		namespace Rcky\Common;
		
		use Rcky\Component\AbstractComponent;
		use Rcky\Component\ComponentInterface as Comp\cFace,
			Rcky\Component\Collector as Collection;
			
		class Componentor extends AbstractComponent implements Comp\cFace, Collection
		{
		}'
		rule: #start.
	classNode := result last.
	
	self assert: classNode hasAlias not.
	self assert: classNode interfaces size = 2.
	self assert: classNode superTypes size = 1.
	
	self assert: (classNode superTypes first) hasAlias.
	self assert: (classNode interfaces first) hasAlias.
	self assert: (classNode interfaces second) hasAlias.
	
	self assert: (classNode interfaces first) alias flattenNamespace = 'Comp\cFace'.
	self assert: (classNode interfaces second) alias flattenNamespace = 'Collection'.
	self assert: (classNode superTypes first) alias flattenNamespace = 'AbstractComponent'.
	
	