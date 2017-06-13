symfony2
testSymfonyEventDispatcherRemoveListenerMethodForeachStatement
	self 
	parse: 'foreach ($this->listeners[$eventName] as $priority => $listeners) {
            if (false !== ($key = array_search($listener, $listeners))) {
                unset($this->listeners[$eventName][$priority][$key], $this->sorted[$eventName]);
            }
        }'
	rule: #foreachStatement.