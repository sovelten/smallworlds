as yet unclassified
asMorph
	| morph morphOrigin cell |
	morph := Morph new.
	morphOrigin := morph innerBounds origin.
	locationMatrix indicesDo: [ :i :j |
		cell := (locationMatrix at: i at: j).
		cell ifNil:
				[ cell := Morph new
					color: Color gray;
					bounds: ((0@0) corner: 20@20) ]
			ifNotNil: [ cell := cell asMorph ].
			
		cell position: ((i-1)*cell width)@((j-1)*cell height)+morphOrigin.
		
		morph addMorph: cell asMorph.
	].

	^morph