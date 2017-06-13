grammar-model-examples
testFullFile
	self
		parse:'<?php
require_once(dirname(__FILE__) ."/../DB/class.JobDB.php");
require_once("class.JobManager.php");
require_once("class.Job.php");
require_once("class.Application.php");
require_once("class.SubmissionSystem.php");

/**
 * Creates and updates applications and 
 *
 */
class ApplicationUpdater {
	
	public function __construct(){
            $this->_job_db = SubmissionSystem::getInstance()->getJobDB();
            $this->_job_manager = new JobManager();
	}
	
	public function updateApplicationText(Application $application,$text){
            $jobname = $application->getJobname();
            $job = $this->_job_manager->getJob($jobname);            
            if(!$job->isOpenForApplications())
                throw new Exception("The submission is closed.");
           $application->setText($text);
           $this->_job_db->updateApplication($application);
	}
        
        public function setApplicationStatus(Application $application, $status){
            $application->setStatus($status);
            $this->_job_db->updateApplication($application);
        }
        
        public function getApplicationFrom(Job $job,User $candidate){
            if(!$job->isCandidate($candidate))
                    throw new Exception ($candidate->getUsername()." is not a candidate of job: ".$job->getJobname());
            $application = new Application($candidate->getUsername(), $job->getJobname());
            $text = $this->_job_db->getApplicationTextFrom($job, $candidate->getUsername());
            $application->setText($text);
            $status = $this->_job_db->getApplicationStatusFrom($job, $candidate->getUsername());
            $application->setStatus($status);
            return $application;
        }
        
        public function createApplication(Job $job,User $candidate){
            if(!$job->isCandidate($candidate))
                    throw new Exception ($candidate->getUsername()." is not a candidate of job: ".$job->getJobname());
            if(!$job->isOpenForApplications())
                throw new Exception("The submission for applications is closed");
            $application = new Application($candidate->getUsername(),$job->getJobname());
            $this->_job_db->addApplication($application);
            return $application;           
        }        
}
?>'
		rule: #start.