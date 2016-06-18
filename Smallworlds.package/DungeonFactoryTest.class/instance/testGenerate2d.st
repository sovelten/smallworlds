tests-as yet unclassified
testGenerate2d
	| dungeon |
	dungeon := generator generate2d: 2.
	self assert: dungeon locations size equals: 2.
	