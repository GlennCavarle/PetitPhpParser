grammar-statements
testClassDeclarationComplexWithDocBlocksAndAliasedAnnotations
	self
		parse:
			'
		namespace Rcky\Test;
		
/**
 * Users role to provide permissions.
 * @ORM\Entity()
 * @ORM\Lazy(true)
 */
class Role {
    /**
     * @ORM\ID()
     * @Assert\NotNull()
     */
    private $_name;
    private $_permissions;
    
    public function __construct($name){
        $this->_name = $name;
        $this->_permissions = array();
    }
    
    public function getName(){
        return $this->_name;
    }
    
    public function addPermission($permission){
        $this->_permissions[]=$permission;
    }
    
    public function hasPermission($permission){
        return in_array($permission, $this->_permissions);
    }
    
    /*
     * Only for testing
     * @Listener\ContextListener\OnInvocation("ForbiddenAccessContextListener")
     */
    public function getPermissions(){
        return $this->_permissions;
    }
}'
		rule: #topStatements