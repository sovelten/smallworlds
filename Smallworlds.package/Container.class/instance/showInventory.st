printing
showInventory
	^self showContentsWith: [ :item | String tab, item inventoryShow ].