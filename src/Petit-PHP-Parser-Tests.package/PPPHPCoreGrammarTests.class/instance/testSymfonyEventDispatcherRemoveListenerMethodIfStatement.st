symfony2
testSymfonyEventDispatcherRemoveListenerMethodIfStatement
	self 
	parse: 'if (!isset($this->listeners[$eventName])) {
            return;
        }'
	rule: #innerStatement.