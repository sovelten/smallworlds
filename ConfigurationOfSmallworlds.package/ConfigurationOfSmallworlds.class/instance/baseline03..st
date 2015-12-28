accessing
baseline03: spec
	<version: '0.3-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/ericvm/Smallworlds/main'.
		spec project: 'PetitParser' with: [ 
			spec
				className: 'ConfigurationOfPetitParser';
				repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main';
				versionString: #stable
		].
		spec
			package:'Smallworlds' with:
				[ spec requires: 'PetitParser']
	]