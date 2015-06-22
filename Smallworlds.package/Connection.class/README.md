A Connection represents a connection from one location to another.  Connections are one way only - to have a bidirectional connection between locations each location must have a connection leading to the other.  Connections can optionally have a key object specified, in which case they can be locked and unlocked.  When locked the currentOpenProbability should be set to zero; when unlocked the currentOpenProbability should be reset to the baseOpenProbability value.

Instance Variables
	closeable:		<Object>
	closed:		<Object>
	closedDescription:		<Object>
	destination:		<Object>
	entryProbability:		<Object>
	key:		<Object>
	linkedConnection:		<Object>
	locked:		<Object>
	lockedDescription:		<Object>
	name:				<String>
	openDescription:		<Object>
	synonyms:		<Set>

closeable
	- xxxxx

closed
	- xxxxx

closedDescription
	- xxxxx

destination
	- xxxxx

entryProbability
	- xxxxx

key
	- xxxxx

linkedConnection
	- xxxxx

locked
	- xxxxx

lockedDescription
	- xxxxx

openDescription
	- xxxxx

synonyms
	- xxxxx
