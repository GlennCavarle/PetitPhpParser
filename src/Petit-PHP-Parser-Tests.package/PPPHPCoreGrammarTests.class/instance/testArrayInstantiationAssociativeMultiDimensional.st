grammar-array
testArrayInstantiationAssociativeMultiDimensional
	self
		parse: 'array(
			"production" => array(
				"db" => "mysql",
				"database" => "production",
				"user" => "username",
			),
			"testing" => array(
				"db" => "sqlite",
				"database" => "file.sqlite",
				"user" => "test"
			),
		)'
		rule: #arrayInstantiation.