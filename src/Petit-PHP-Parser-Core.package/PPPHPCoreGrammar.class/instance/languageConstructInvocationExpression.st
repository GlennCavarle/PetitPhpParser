grammar-language-constructs
languageConstructInvocationExpression
	"restricted set, i assume that the other effectively are statements (its not documented)"
	^	((exit / die ), (self inRB: expression) optional ) /
		((print / include_once / include / require / require_once), expression) /
		(list, (self inRB: (expression optional delimitedBy: comma))) /
		((eval / empty / isset), (self inRB: expression))