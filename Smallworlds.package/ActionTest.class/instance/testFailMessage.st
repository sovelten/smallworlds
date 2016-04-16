tests-changing
testFailMessage
	| box ball response expected |
	box := Container name: 'box'.
	ball := Thing name: 'ball'.
	
	response := world parse: 'put ball on box'.
	expected := putOnTIAction failMessageBlock value: 'ball'.
	Transcript << response << String cr.
	self assert: (response = expected).
	
	actor inventory add: ball.
	response := world parse: 'put ball on box'.
	expected := putOnTIAction failSecondMessageBlock value: 'box'.
	Transcript << response << String cr.
	self assert: (response = expected).
	
	actor location add: box.
	response := world parse: 'put ball on box'.
	expected := actor doPut: ball on: box.
	Transcript << response << String cr.
	self assert: (response = expected).
