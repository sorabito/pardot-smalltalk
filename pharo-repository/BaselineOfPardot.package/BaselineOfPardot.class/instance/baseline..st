baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'XMLParser' with: [
				spec repository: 'github://pharo-contributions/XML-XMLParser:master'].

			spec for: #(#'pharo7.x') do:[
				spec baseline: 'ZincHTTPComponents' with: [
					spec repository: 'github://svenvc/zinc:5206a27016d9f8120dfeb519a21a9c898d406cfa/repository';
						loads: #('Core' 'SSO-OAuth1' 'SSO-OAuth2' 'WebSocket') ].
			].
			spec for: #(#'pharo8.x') do:[
				spec baseline: 'ZincHTTPComponents' with: [
					spec repository: 'github://svenvc/zinc:7f3502b082fbcd29e6f02f1aad2e46d00406ec3e/repository';
						loads: #('Core' 'SSO-OAuth1' 'SSO-OAuth2' 'WebSocket') ].
			].

			spec
				package: 'Pardot-Core';
				package: 'Pardot-Tests' with: [
					spec requires: #(#'Pardot-Core') ].
				
			spec 
				group: 'Core' with: #(#'Pardot-Core');
				group: 'Tests' with: #('Pardot-Tests');
				group: 'default' with: #('Core' 'Tests') ].