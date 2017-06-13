grammar-class
classConstant
	"Refactored! It does not make sense to instantiate a constant without value since they are final!"
	 ^ comment optional, const , ((comment optional, validIdentifier, $= asParser trim, (literal / expression)) separatedBy: comma).