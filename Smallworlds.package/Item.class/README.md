An Item is a ''thing'' in the database which is not an actor (e.g. is passive, not active), e.g. lamp, key, rod, etc.

Items should be capable of responding to simple commands, e.g.
    wave rod
when parsed and processed by an Actor might result in
    self perform: (Message selector: #wave: argument: ''rod'')

The Actor handler for #wave might be something like

    wave: aString
        | items |
        items := self findItemsLike: aString.
        items size = 0 ifTrue: [ AdvNoItemFoundException signalWith: aString ].
        items size > 1 ifTrue: [ AdvMultipleItemsFoundException signalWith: aString ]

        ^(items at: 1) performAction: #wave

Thus, items need to have a Collection of things they can do, which may consist of a Dictionary of BlockClosures since we''ll need to change this on an instance-by-instance basis.'

Instance Variables
	lightSource:		<Object>
	lighted:		<Object>
	movable:		<Object>
	points:		<Object>
	treasure:		<Object>

lightSource
	- xxxxx

lighted
	- xxxxx

movable
	- xxxxx

points
	- xxxxx

treasure
	- xxxxx
