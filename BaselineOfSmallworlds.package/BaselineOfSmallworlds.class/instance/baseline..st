baseline
baseline: spec
	<baseline>
	
	spec for:#common do:[
		spec 
			project: 'PetitParser' with: [ 
				spec
					className: 'ConfigurationOfPetitParser';
					repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main';
					versionString: #stable
				];
			package: 'Smallworlds' with: [ spec requires: 'PetitParser' ]
	]