baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				project: 'XMLParser'
				with: [ spec
						className: 'ConfigurationOfXMLParser';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main' ].

			spec
				package: 'Pardot-Core';
				package: 'Pardot-Tests' with: [
					spec requires: #(#'Pardot-Core') ].
				
			spec 
				group: 'Core' with: #(#'Pardot-Core');
				group: 'Tests' with: #('Pardot-Tests');
				group: 'default' with: #('Core' 'Tests') ].