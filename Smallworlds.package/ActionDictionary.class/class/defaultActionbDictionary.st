instance creation
defaultActionbDictionary

	^self new
		add: #drop:		-> DropAction;
		add: #take:		-> TakeAction;
		add: #put:on:	-> PutOnAction;
		add: #say			-> SayAction;
		add: #look		-> LookAction;
		add: #look:		-> LookObjectAction;
		add: #go:			-> GoAction;
		add: #showInventory -> ShowInventoryAction;
		yourself