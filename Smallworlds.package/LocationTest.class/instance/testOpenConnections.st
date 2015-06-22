tests-*Smallworlds-Extras
testOpenConnections
	| set connections |
	connections := #('north' 'west' 'east' 'south') asSet.
	self assert: (location1 openConnections = connections).
	location1 isSouthOf: location2.
	set := location1 openConnections.
	self assert: ((set includes: 'north') not).
	self assert: (set = #('south' 'west' 'east') asSet)
	