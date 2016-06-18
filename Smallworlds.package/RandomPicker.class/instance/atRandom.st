accessing
atRandom
	| rand count |
	rand := randomGen next * 100.
	count := values cumulativeCounts.
	^(count detect: [ :x | rand < x key ]) value atRandom.