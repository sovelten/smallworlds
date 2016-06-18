Action is a temporary object that exists while an action is being executed. An action is what the parser returns after parsing input. 

An Action can receive hooks from other objects. A hook is a block that takes the action as argument and modifies it. This is used to add dependant behaviour for actions and make different things happen when an action is performed on different objects or different circunstances.

    Instance Variables
	actor: 	Actor performing the action
	verb:  	Verb for the action being performed
	things: 	Arguments for the action
	callback: 	Actor method to be executed when action is successful
	hooks:		Blocks that modify the action
	status:		Represents current state of action execution: #started #stopped or #finished