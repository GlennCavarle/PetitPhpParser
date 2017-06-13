baselines
baseline: spec
	<baseline>
	spec for: #common do: [ spec
			
			configuration: 'PetitParser' with: [ spec
				versionString: #stable;
				repository: 'http://www.smalltalkhub.com/mc/Moose/PetitParser/main' ];
			
			configuration: 'PetitParserExtension' with: [ spec
				versionString: #stable;
				repository: 'http://www.smalltalkhub.com/mc/Moose/PetitParserExtension/main' ];
			
			package: 'CollectionExtensions' with: [ spec
				repository: 'http://www.smalltalkhub.com/mc/Moose/CollectionExtensions/main' ];
			
			package: 'Petit-PHP-Parser-Core' with: [ spec requires: #('PetitParser' #'PetitParserExtension' #'CollectionExtensions') ];
			package: 'Petit-PHP-Parser-Nodes' with: [ spec requires: #('Petit-PHP-Parser-Core') ];
			package: 'Petit-PHP-Parser-Tests' with: [ spec requires: #('Petit-PHP-Parser-Nodes') ];
			package: 'Petit-PHP-Help' with: [ spec requires: #('Petit-PHP-Parser-Core') ].
			
			spec group: 'Core' with: #('Petit-PHP-Parser-Core').
			spec group: 'Nodes' with: #('Petit-PHP-Parser-Nodes').
			
			
]
