as yet unclassified
initializePresenter
	| responseString |
	textInput whenTextIsAccepted: [ 
		responseString := world parse: textInput text.
		"responseString := String new initialize."
		"responses do: [ :each | responseString := responseString, String crlf, each text ]."
		textOutput text: (String crlf join: (world log)).	
		textOutput scrollValue: 0@1.
		textInput  text: ''.
	].