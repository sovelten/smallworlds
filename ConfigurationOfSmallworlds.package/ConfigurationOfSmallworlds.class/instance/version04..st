accessing
version04: spec
	<version: '0.4' imports:#('0.3-baseline')>
	
	spec for: #common do: [
		spec blessing: #release.
		spec
			package: 'Smallworlds' with:'Smallworlds-EricVeltendeMelo.92'
	]