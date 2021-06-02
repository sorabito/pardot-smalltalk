baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'XMLParser' with: [
				spec repository: 'github://pharo-contributions/XML-XMLParser:master'].

			spec
				project: 'ZincHTTPComponents'
					with: [ 
							spec
								className: 'ConfigurationOfZincHTTPComponents';
								versionString: #stable;
								repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].

			spec
				package: 'Pardot-Core';
				package: 'Pardot-Tests' with: [
					spec requires: #(#'Pardot-Core') ].
				
			spec 
				group: 'Core' with: #(#'Pardot-Core');
				group: 'Tests' with: #('Pardot-Tests');
				group: 'default' with: #('Core' 'Tests') ].