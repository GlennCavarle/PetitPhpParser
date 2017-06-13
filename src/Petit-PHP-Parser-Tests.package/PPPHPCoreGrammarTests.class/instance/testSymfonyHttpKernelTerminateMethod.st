symfony2
testSymfonyHttpKernelTerminateMethod
	self 
	parse: 'public function terminate(Request $request, Response $response)
    {
        $this->dispatcher->dispatch(KernelEvents::TERMINATE, new PostResponseEvent($this, $request, $response));
    }'
	rule: #methodDefinition.