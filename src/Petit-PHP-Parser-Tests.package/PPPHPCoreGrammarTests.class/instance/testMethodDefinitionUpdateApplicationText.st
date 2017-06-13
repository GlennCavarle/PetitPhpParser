grammar-model-examples
testMethodDefinitionUpdateApplicationText
	self
		parse:'
		public function updateApplicationText(Application $application,$text){
			$jobname = $application->getJobname();
			$job = $this->_job_manager->getJob($jobname);            
  
			if(!$job->isOpenForApplications())
				throw new Exception("The submission is closed.");
           
			$application->setText($text);
			$this->_job_db->updateApplication($application);
		}'
		rule: #methodDefinition.