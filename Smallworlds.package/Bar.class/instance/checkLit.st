as yet unclassified
checkLit	
	(self deepContentsMatching: 'cloak') ifNotEmpty: [  
		^false
	]
	ifEmpty: [ ^super checkLit ]