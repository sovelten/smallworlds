printing
showFull
	| name |
	name := self noun name.
	^name article,' ', self showAdjectives, ' ', name.