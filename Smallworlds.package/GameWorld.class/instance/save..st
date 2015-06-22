command
save: filename
	^ Response text:'Saving is not yet supported'
	"aFileStream := FileStream write: self defaultFileName text: false.
	(STBOutFiler on: aFileStream)
		nextPut: self.
	aFileStream close."