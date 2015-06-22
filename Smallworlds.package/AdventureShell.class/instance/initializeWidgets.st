initialization
initializeWidgets

	textOutput := self newText.
	
	textInput := self newTextInput.
	textInput
		ghostText: 'Put command here';
		acceptOnCR: true;
		removeEntryCompletion.
		
	self title: 'Adventure Shell'.
	
	self focusOrder
		add: textOutput;
		add: textInput.