as yet unclassified
checkLit	
	(self visibleContentsMatching: 'cloak') ifNotEmpty: [  
		^false
	]
	ifEmpty: [ ^super checkLit ]