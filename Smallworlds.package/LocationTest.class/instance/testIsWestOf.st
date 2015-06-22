tests-as yet unclassified
testIsWestOf
	|      con1 con2 |

	location1 isWestOf: location2.
	con1 := location1 connections first.
	self assert: con1 destination = location2.
	con2 := location2 connections first.
	self assert: con2 destination = location1.
	self assert: ( con1 noun hasSynonym: 'east' ).
	self assert: ( con2 noun hasSynonym: 'west' ).