grammar-statements
testClassDeclarationComplexWithAliasedTypes
	self
		parse: '
		use Rcky\Collections\Iterator,
			Rcky\Collections as Collections;
			
		use Doctrine\Common\Mapper as ORM,
			Doctrine\Common\Assertions as Assert;
		
		/**
 		* Users role to provide permissions.
 		* @ORM\Entity()
 		*/
		class Role extends \ArrayIterator implements Iterator, Collections\Walker {
			/**
     			 * @ORM\Collected()
    			 * @Assert\NotNull()
     			 */
   			 private $innerIterator;
			
			public function setInnerIterator(Iterator $it){
				$this->innerIterator = $it;
			}
			/**
			 * @Assert\IsType("RoleIterator")
			 */
			public function getInnerIterator(){
			}
		}'
		rule: #topStatements.
