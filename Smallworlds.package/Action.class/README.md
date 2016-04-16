Action is a temporary object that exists while an action is being executed. An action is what the parser returns after parsing input. To be executed properly, the action instance must have an actor set.

An Action can receive hooks from other objects. A hook is a block that takes the action as argument and modifies it. This is used to add dependant behaviour for actions and make different things happen when an action is performed on different objects or different circunstances.

    Instance Variables
	actor:	Actor performing the action
	arguments:	Arguments for the action
	callback:	Actor method to be executed when action is successful
	hooks:		Blocks that modify the action
	responses:	collection of strings describing consequences of the action
	signatures:	Action signatures that are parsed to this action
	status:		Represents current state of action execution: #parsed, #unparsed or #finished