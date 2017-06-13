grammar-control-structures
testTryCatchStatementMultipleExceptionWithContent
	self
		parse: 'try {	
			$somevar = $this->getSomevar();
		} catch (Model\Exceptions\InvalidModelIdException $ex) {
			$this->addError($ex);
		} catch (Model\Exceptions\ValidationException $ex){
			$this->addError($ex->getMessage($ex));
		}'
		rule: #tryCatchStatement.