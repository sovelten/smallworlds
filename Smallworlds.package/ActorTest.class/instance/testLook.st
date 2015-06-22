tests-command
testLook
	| desc locdesc |
	desc := player look.
	locdesc := player location longDescription.
	self assert: (desc = player location longDescription).