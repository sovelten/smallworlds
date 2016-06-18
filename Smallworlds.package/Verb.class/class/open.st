instance creation
open
	^(TVerb signature: #open:)
		objectsInScope: self visibleScope;
		failMessageBlock: [ :obj | 'You can''t see any ', obj, '.' ]