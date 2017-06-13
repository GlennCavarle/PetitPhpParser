doctrine2
testPDOConnectionClass
	self
		parse: 'class PDOConnection extends PDO implements Connection
{
    public function __construct($dsn, $user = null, $password = null, array $options = null)
    {
        parent::__construct($dsn, $user, $password, $options);
        $this->setAttribute(PDO::ATTR_STATEMENT_CLASS, array(''Doctrine\DBAL\Driver\PDOStatement'', array()));
        $this->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
}'
		rule: #classDeclaration.