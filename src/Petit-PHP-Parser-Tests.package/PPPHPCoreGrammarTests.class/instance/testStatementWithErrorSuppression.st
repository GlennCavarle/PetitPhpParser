doctrine2
testStatementWithErrorSuppression
	self
		parse: '$stmt = @db2_prepare($this->_conn, $sql);'
		rule: #innerStatement.