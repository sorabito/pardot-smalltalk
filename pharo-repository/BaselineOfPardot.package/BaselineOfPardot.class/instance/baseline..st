baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'XML-Parser'
				with: [ spec
						file: 'XML-Parser-monty.449';
						repository: 'https://squeaksource.blueplane.jp/AsLegacyLibs' ].

			spec
				package: 'Pardot-Core'. ].