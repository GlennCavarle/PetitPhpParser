grammar-control-structures
switchCase
	"actually there are only simple expressions allowed that resolve to a literal"
	^ case, expression, (colon / semicolon), innerStatement star