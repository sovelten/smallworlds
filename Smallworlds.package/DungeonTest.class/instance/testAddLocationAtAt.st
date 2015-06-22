tests-as yet unclassified
testAddLocationAtAt
	dungeon addLocation: location at: 1 at: 1.
	self assert: ((dungeon locations at:1) location name = TestLocation blueRoom name).
	self assert: ((dungeon locations at:1) position = (1@1)).
	self assert: ((dungeon locationMatrix at:1 at:1) description = TestLocation blueRoom description).