symfony2
testSymfonyEventDispatcherRemoveListenerMethodForeachStatementIf
	self 
	parse: ' if (false !== ($key = array_search($listener, $listeners))) {
			unset($this->listeners[$eventName][$priority][$key], $this->sorted[$eventName]);
            }'
	rule: #ifStatement.