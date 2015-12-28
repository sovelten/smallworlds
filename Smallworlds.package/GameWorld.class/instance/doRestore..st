command
doRestore: filename
	^ 'Restoring is not yet supported'
	"aFileStream := FileStream read: self defaultFileName text: false.
	aWorld := (STBInFiler on: aFileStream) next.
	self become: aWorld.
	self trigger: #responsesChanged"