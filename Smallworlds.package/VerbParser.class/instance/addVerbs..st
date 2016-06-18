accessing
addVerbs: verbCollection
	self verbs addAll: verbCollection.
	self updateParser.