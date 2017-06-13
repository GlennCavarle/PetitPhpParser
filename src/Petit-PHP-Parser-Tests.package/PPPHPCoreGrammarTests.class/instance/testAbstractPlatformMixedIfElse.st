doctrine2
testAbstractPlatformMixedIfElse
	"This one used to fail because of the strange usage of if else blocks."
	self
		parse:'  if ($len === null)
            return ''SUBSTRING('' . $value . '' FROM '' . $from . '')'';
        else {
            return ''SUBSTRING('' . $value . '' FROM '' . $from . '' FOR '' . $len . '')'';
        }'
		rule: #ifStatement