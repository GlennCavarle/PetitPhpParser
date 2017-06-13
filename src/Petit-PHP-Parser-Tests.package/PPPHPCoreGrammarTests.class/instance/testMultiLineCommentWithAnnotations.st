grammar-comments
testMultiLineCommentWithAnnotations
	"Multi line comments without inner parsing"
	self
		parse: '
		/**
		* @Entity
 		* @Table(name="pets")
 		* @InheritanceType("SINGLE_TABLE")
 		* @DiscriminatorColumn(name="pet_type", type="string")
 		* @DiscriminatorMap({"cat" = "Cat", "dog" = "Dog"})
     		* @StandardObject("name", dataType="string")
     		*/ '
		rule: #comment