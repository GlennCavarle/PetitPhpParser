tests
testStaticMember
	self parse: 'MyClass::$property' rule: #static_member.
	self parse: '$myClass::$property' rule: #static_member.
	