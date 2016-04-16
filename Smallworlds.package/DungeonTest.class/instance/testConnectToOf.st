tests-as yet unclassified
testConnectToOf
	| loc1 loc2 |
	dungeon addLocation: location at: dungeon origin.
	loc1 := TestLocation redRoom.
	loc2 := TestLocation greenRoom.
	dungeon connect: loc1 to: Direction north of: (dungeon locations at: 1).
	dungeon connect: loc2 to: Direction west of: (dungeon locations at: 2).
	self assert: (loc1 connections at:1) name = 'south'.
	self assert: (location connections at:1) name = 'north'.
	self assert: (loc2 connections at:1) name = 'east'.
	self assert: (dungeon locations at:2) position = ((dungeon locations at: 1) position + (Direction north asPoint)).
	self assert: (dungeon locations at:3) position = ((dungeon locations at: 2) position + (Direction west asPoint)).