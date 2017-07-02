tests-command
testDoLook
	| desc locdesc |
	"Test look"
	desc := player doLook lines first.
	locdesc := player location longDescription.
	self assert: desc equals: locdesc.
	"Test look:"
	self assert: (player doLook: bottle) equals: bottle longDescription