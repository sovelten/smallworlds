instance creation
close
	^(TVerb signature: #close:)
		objectsInScope: self visibleScope;
		failMessageBlock: [ :obj | 'You can''t see any ', obj, '.' ]