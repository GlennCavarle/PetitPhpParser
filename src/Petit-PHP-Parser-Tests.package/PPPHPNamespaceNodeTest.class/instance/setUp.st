as yet unclassified
setUp
	"comment stating purpose of message"
	super setUp.
	
	nodeOne := PPPHPNamespaceNode new namespaceName: 'nodeOne'. 
	nodeTwo := PPPHPNamespaceNode new namespaceName: 'nodeTwo'.
	nodeThree := PPPHPNamespaceNode new namespaceName: 'nodeThree'.
	rootNode := PPPHPNamespaceNode new namespaceName: $\.