accessing
version10: spec
	<version: '1.0' imports:#('0.3-baseline')>
	
	spec for: #common do: [
		spec blessing: #release.
		spec
			package: 'Smallworlds' with:'Smallworlds-EricVeltendeMelo.122'
	]