accessing
baseline02: spec
	<version: '0.2-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/ericvm/Smallworlds/main'.
		spec
			package:'Smallworlds';
			package:'Smallworlds-ColossalCave' with: [ spec requires: 'Smallworlds' ]
	]