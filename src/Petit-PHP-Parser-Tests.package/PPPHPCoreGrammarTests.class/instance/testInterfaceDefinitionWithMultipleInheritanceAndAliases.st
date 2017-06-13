grammar-keywords
testInterfaceDefinitionWithMultipleInheritanceAndAliases
	
	self 
		parse: '
		<?php
		namespace Rcky\Test;
		
		use Rcky\Collections\Iterator,
			Rcky\Collections\Walker as Airwalker;
			
		interface Skyterator extends Iterator, Airwalker, \ArrayAccess {
		}
		'
		rule: #start
