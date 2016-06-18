as yet unclassified
draw
	| morphOrigin cell |
	self removeAllMorphs.
	morphOrigin := self innerBounds origin.
	dungeon locationMatrix indicesDo: [ :i :j |
		cell := (dungeon locationMatrix at: i at: j).
		cell ifNil:
				[ cell := Morph new
					color: Color gray;
					bounds: ((0@0) corner: 20@20) ]
			ifNotNil: [ cell := cell asMorph ].
			
		cell position: ((i-1)*cell width)@((j-1)*cell height)+morphOrigin.
		
		self addMorph: cell asMorph.
	].