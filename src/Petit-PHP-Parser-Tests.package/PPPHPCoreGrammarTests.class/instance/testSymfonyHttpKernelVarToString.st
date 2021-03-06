symfony2
testSymfonyHttpKernelVarToString
	self 
	parse: ' private function varToString($var){
        if (is_object($var)) {
            return sprintf("Object(%s)", get_class($var));
        }

        if (is_array($var)) {
            $a = array();
            foreach ($var as $k => $v) {
                $a[] = sprintf("%s => %s", $k, $this->varToString($v));
            }

            return sprintf("Array(%s)", implode(",", $a));
        }

        if (is_resource($var)) {
            return sprintf("Resource(%s)", get_resource_type($var));
        }

        if (null === $var) {
            return "null";
        }

        if (false === $var) {
            return "false";
        }

        if (true === $var) {
            return "true";
        }

	  return (string) $var;
    }'
	rule: #methodDefinition.