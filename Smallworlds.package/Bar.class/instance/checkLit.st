checking
checkLit	
	(self visibleContentsMatching: 'cloak') ifNotEmpty: [  
		^false
	]
	ifEmpty: [ ^super checkLit ]