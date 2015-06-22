as yet unclassified
opposite: aDirection
	^opposites at: aDirection name
		ifPresent: [ :value | Direction name: value ]