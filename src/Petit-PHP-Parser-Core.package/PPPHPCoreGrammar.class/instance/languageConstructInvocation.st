grammar
languageConstructInvocation
	"what a fuckin mess... but we need to be as specific as possible to avoid errors in the expressions"
		^	((exit / die ), (self inRB: expression) optional) /
			(return, expression optional) /
			((print / echo / throw / include_once / include / require / require_once), expression) /
			(list, (self inRB: (expression optional delimitedBy: comma))) /
			((eval / empty / isset / unset), (self inRB: expression))