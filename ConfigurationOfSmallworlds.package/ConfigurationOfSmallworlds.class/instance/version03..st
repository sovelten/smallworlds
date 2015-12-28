accessing
version03: spec
	<version: '0.3' imports:#('0.3-baseline')>
	
	spec for: #common do: [
		spec blessing: #release.
		spec
			package: 'Smallworlds' with:'Smallworlds-EricVeltendeMelo.78'
	]