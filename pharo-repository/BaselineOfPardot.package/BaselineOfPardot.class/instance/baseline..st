baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'XMLParser' with: [
				spec repository: 'github://pharo-contributions/XML-XMLParser:master'].

			spec package: 'Zinc-SSO-OAuth2-Core' with: [
				spec 
					repository: 'http://mc.stfx.eu/ZincHTTPComponents'. ].

			spec
				package: 'Pardot-Core' with: [
					spec requires: #(#'Zinc-SSO-OAuth2-Core') ];
				package: 'Pardot-Tests' with: [
					spec requires: #(#'Pardot-Core') ].
				
			spec 
				group: 'Core' with: #(#'Pardot-Core');
				group: 'Tests' with: #('Pardot-Tests');
				group: 'default' with: #('Core' 'Tests') ].