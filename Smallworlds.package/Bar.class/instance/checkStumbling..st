as yet unclassified
checkStumbling: announcement
| action |

action := announcement action.
(
	(action signature = #go:) &
	(action actor location == self) &
	(self checkLit not)
) ifTrue: [
	action stop.
	message increaseBlunderCount.
	action addResponse: 'Blundering around in the dark isn''t a good idea!'
]
