symfony2
testSymfonyHttpKernelFilterResponse
	self 
	parse: 'private function filterResponse(Response $response, Request $request, $type)
    {
        $event = new FilterResponseEvent($this, $request, $type, $response);

        $this->dispatcher->dispatch(KernelEvents::RESPONSE, $event);

        return $event->getResponse();
    }'
	rule: #methodDefinition.