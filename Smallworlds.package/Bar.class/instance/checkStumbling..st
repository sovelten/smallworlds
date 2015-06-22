as yet unclassified
checkStumbling: announcement
| action |

action := announcement action.
(
	(action class signature = #go:) &
	(action actor location == self) &
	(self checkLit not)
) ifTrue: [
	action stop.
	action addResponse: 'Blundering around in the dark isn''t a good idea!'
]
