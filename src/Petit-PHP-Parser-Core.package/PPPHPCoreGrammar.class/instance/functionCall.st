grammar-statements
functionCall
	"Some passages from the php doc:
	- User defined functions:
		- named: function fullyQualifiedFunctionName (signature){} 	<-- no end statement
		- anonymous: function () use($varlist){} 						<-- end statement delimiter
	- Variable functions:
		- function foo can be called as: $func = 'foo'; $func(); wich calls foo()
		- method calls $obj->$func();
		- When calling static methods, the function call is stronger than the static property operator 
	- Signature:
		- is a comma-delimited list of expressions
		- default passed by value, can be passed by reference (operator &)
		- default values can be scalars, arrays or null (and constants)
		- The default value must be a constant expression, not (for example) a variable, a class member or a function call
		- any defaults should be on the right side of any non-default 
		Not in docs:
		- Type hinting (fullyQualifiedClassName  $var=Null, $a)
		- as seen, sometimes it makes sense to have default values on the left!"
	"^ 	(variable / identifier), (self inRB: expression optional )"
		
		^fullyQualifiedFunctionName, (self inRB: (expression separatedBy: comma))