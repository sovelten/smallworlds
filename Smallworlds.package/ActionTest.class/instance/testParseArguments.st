tests-accessing
testParseArguments
	lookIAction parseArguments.
	dropTAction addArgument: 'bottle'.
	dropTAction execute.
	Transcript crShow: dropTAction status.