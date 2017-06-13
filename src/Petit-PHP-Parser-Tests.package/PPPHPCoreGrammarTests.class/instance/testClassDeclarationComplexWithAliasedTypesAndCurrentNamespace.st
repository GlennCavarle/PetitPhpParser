grammar-statements
testClassDeclarationComplexWithAliasedTypesAndCurrentNamespace
	"this should be a fully resolved namespace and alias example"
	self
		parse:'
		<?php
		namespace Rcky\Test;
		
		use 	Rcky\Collections\Iterator,
				Rcky\Collections\FilterIterator as FilterIt;
		
		/** The function name and the Hint gets bound to the actual space */
		function checkThis(Hint $param) {
		}
		
		class Checker extends FilterIt implements Iterator {
			public function next(){
			}
			public function current(){
			}
			public function valid(){
			}
			public function reset(){
			}
			// the It gets bound to the Rcky\Test space
			public function innerIterator(It $it){
			}
		}
		'
		rule: #start