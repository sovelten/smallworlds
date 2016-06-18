adding
addAll: aKeyedCollection
	aKeyedCollection do: [ :x | 
		values valuesAndCounts at: x key put: x value
	]