as yet unclassified
initializePresenter
	| responseString |
	textInput whenTextIsAccepted: [ 
		responseString := world parse: textInput text.
		"responseString := String new initialize."
		"responses do: [ :each | responseString := responseString, String crlf, each text ]."
		textOutput text: responseString text.	
		textInput  text: ''.
	].