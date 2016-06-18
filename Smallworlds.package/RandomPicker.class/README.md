A Random picker is able to choose some object at random from a bag of objects inside it. Objects inside can have different frequencies that change how rarely or frequently they are chosen.

The objects inside the random picker must be able to respond to message atRandom.

Example of a random picker that chooses "heads" 2 out of 3 times:
	viciousCoin := RandomPicker withAll: {
		#("heads") -> 2.
		#("tails") -> 1
	}.
	flip := vicousCoin atRandom.