as yet unclassified
annotationDefault
	"Consume the defined tags."
	^ annotationMarker,  ('*/' asParser / #newline asParser) negate star flatten trim