baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			"Dependencies"
			self petitParser: spec.

			"Packages"
			spec
				package: 'Smallworlds' with: [ spec requires: #('PetitParser') ] 
			].