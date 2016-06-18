*Smallworlds-Extras
asMorph
	| morph size origin corner bounds connectionNames wallWidth |
	size := 20.
	wallWidth := 2.
	origin := (0@0).
	corner := (size@size).
	bounds := origin corner: corner.
	
	morph := BorderedMorph new
		color:Color white;
		borderColor: Color black;
		borderWidth: wallWidth;
		bounds: bounds.
		
	connectionNames := self connections collect: [ :each | each name ].
	
	(connectionNames includes: 'north') ifTrue: [
		morph addMorph: (Morph new color: Color white; bounds: (7@0 corner:(13@wallWidth)) )
	].
	(connectionNames includes: 'west') ifTrue: [
		morph addMorph: (Morph new color: Color white; bounds: (0@7 corner:(wallWidth@13)) )
	].
	(connectionNames includes: 'east') ifTrue: [
		morph addMorph: (Morph new color: Color white; bounds: ((size - wallWidth)@7 corner:(size@13)) )
	].
	(connectionNames includes: 'south') ifTrue: [
		morph addMorph: (Morph new color: Color white; bounds: (7@(size - wallWidth) corner:(13@size)) )
	].
	
	self containsPlayer ifTrue: [
		morph addMorph: (CircleMorph new color: Color red; bounds: (5@5 corner: 15@15)).
	].

	^morph