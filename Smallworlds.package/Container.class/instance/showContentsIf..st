printing
showContentsIf: aBlock
	^self showContentsIf: aBlock with: [ :item | String tab, item show ].