grammar-model-examples
testMethodDefinitionConstructor 
	self
		parse:'public function __construct(){
            	$this->_job_db = SubmissionSystem::getInstance()->getJobDB();
            	$this->_job_manager = new JobManager();
		}'
		rule: #methodDefinition.