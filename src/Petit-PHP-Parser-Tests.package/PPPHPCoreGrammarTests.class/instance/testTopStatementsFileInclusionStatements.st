grammar-statements
testTopStatementsFileInclusionStatements
	"Requirements often get resolved at the beginning"
	self 
	parse: 'require_once(dirname(__FILE__) ."/../DB/class.JobDB.php");
			require_once("class.JobManager.php");
			require_once("class.Job.php");
			require_once("class.Application.php");
			require_once("class.SubmissionSystem.php");' 
	rule: #topStatements.