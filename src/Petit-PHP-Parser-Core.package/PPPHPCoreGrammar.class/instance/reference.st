as yet unclassified
reference
	"The reference operator"
	| amp |
	amp := $& asParser trim.
	^(amp, amp not) ==> [:result | result first ].