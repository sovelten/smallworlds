tests-command
testDoLook
	| desc locdesc |
	"Test look"
	desc := player doLook lines first.
	locdesc := player location longDescription.
	self assert: desc = player location longDescription.
	"Test look:"
	self assert: (player doLook: bottle) = (bottle longDescription)