running
setUp
	stack:= PPPHPNamespaceStack new.
	tokenWithoutNamespace:= {nil. {}. 'Test'.}.
	tokenNamespaced:= {nil. {
		{'vendor'. $\.}.
		{'component'. $\.}
	}. 'Test'.}.
	tokenAbsoluteNamespace:= {$\. {
		{'myspace'. $\.}.
	}. 'myclass'}.
	tokenRootedNamespace:= {$\. {}. 'ArrayAccess'. }
	