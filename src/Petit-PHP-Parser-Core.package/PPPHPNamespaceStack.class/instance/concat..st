accessing
concat: aPPPHPNamespaceStack
	"creates a copy of the added stack"
	aPPPHPNamespaceStack copy reverseDo: [ :item | self push: item ]