grammar
expression
	"Have to split the parser to avoid problems with the ternary operator which itself takes an expression as term.
	Besides that its important to know that the castings to double and long double aren't documented (are parts of the float implementation)"
	 ^ PPExpressionParser new
		term: (comment star , expressionTerm trim, comment star) ==> [:result | result second];
		group: [:g | 
			g left: '->' asParser trim do: [:a :op :b | { a. op. b.}]. "add helper methods here"
			g left: doubleColon trim do: [:a :op :b | { a. op. b.}]. "add helper methods here"
			];
		group: [ :g |
			"g prefix: newKeyword do: [:op :a | {op. a.}]. add helper method here"
			g prefix: clone do: [:op :a | {op. a.}]. "add helper method here"
			];
		group: [ :g | "mostly casting (int) (float) (string) (array) (object) (bool) @"
			g prefix: '~' asParser trim do: [:op :a | {op. a.}].
			g prefix: '-' asParser trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'int' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'integer' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'float' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'double' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'long double' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'binary' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'unset' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'string' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'array' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'object' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'bool' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: (self inRB: 'boolean' asParser caseInsensitive trim ) trim do: [:op :a | {op. a.}].
			g prefix: $@ asParser caseInsensitive trim do: [:op :a | {op. a.}].		 
			];
		group:[ :g |
			g left: instanceof do: [:a :op :b |{a. op. b.}] 
			];
		group:[ :g | "increment decrement"
			g postfix: '++' asParser trim do:[ :a :op | {a. op.}].
			g postfix: '--' asParser trim do:[ :a :op | {a. op.}].
			g prefix: '++' asParser trim do: [:op :a | {op. a.}].
			g prefix: '--' asParser trim do: [:op :a | {op. a.}].
			];
		group: [ :g | "arithmetic operators"
			g left: '*' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] .
			g left: '/' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g left: '%' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g | "arithmetic operators"
			g left: '+' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] .
			g left: '-' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g left: dot do: [ :a :op :b | { a. op. b } ]. "concatenation"		
			];
		group: [ :g |
			g left: '<<' asParser trim do:  [ :a :op :b | { a. op. b } ] .
			g left: '>>' asParser trim do:  [ :a :op :b | { a. op. b } ] .
			];
		group: [ "comparison" :g |
			g left: '<=' asParser trim do: [:a :op :b| {a. op. b.}].
			g left: '>=' asParser trim do: [:a :op :b| {a. op. b.}].
			g left: '>' asParser trim do: [:a :op :b| {a. op. b.}].
			g left: '<' asParser trim do: [:a :op :b| {a. op. b.}].
			g left: '<>' asParser trim do: [:a :op :b| {a. op. b.}].
			];
		
		group: [ :g | "Comparison, the order is important!"
			g left: '===' asParser trim do: [ :a :op :b | { a. op. b } ] .
			g left: '==' asParser trim do: [ :a :op :b | { a. op. b } ] .
			g left: '!==' asParser trim do: [ :a :op :b | { a. op. b } ] .
			g left: '!=' asParser trim do: [ :a :op :b | { a. op. b } ] .
			g left: '<>' asParser trim do: [ :a :op :b | { a. op. b } ] .		
			];
		group: [ :g |
			g left: reference do: [:a :op :b | {a. op. b.}].
			g prefix: reference do: [:op :b | {op. b.}].
			];
		group: [ :g |
			g left: $^ asParser caseInsensitive trim do: [ :a :op :b | { a. op. b. }]. ];
		group: [ :g |
			g left: $| asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ]. ];
		 group: [ :g |
			g left: '&&' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: '||' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ];
		group: [:g | 
			g left: ($? asParser trim, expression optional, colon) do: [:a :op :b | {a. op. b.}].
		];
		group: [ :g | "Assignment"
			g right: '<<=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '>>=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '=>' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '+=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '-=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '*=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '/=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '.=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '%=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '&=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '|=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '^=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g right: '=' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			];

		group: [ "concatenation" :g |
			g left: ',' asParser trim do: [:a :op :b| {a. op. b.}].
			g left: '.' asParser trim do: [:a :op :b| {a. op. b.}].
			];
		group: [ :g |
			g left: 'AND' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: 'XOR' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: 'OR' asParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ].