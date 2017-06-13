symfony2
testSymfonyEventDispatcherRemoveListenerMethodForeachStatementEmpty
	self 
	parse: 'foreach ($this->listeners[$eventName] as $priority => $listeners) {
        }'
	rule: #foreachStatement.