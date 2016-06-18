tests-as yet unclassified
setUp
	parser := MainParser default.
	location := TestLocation redRoom.
	actor := Actor defaultActor location: location.
	parser actor: actor.