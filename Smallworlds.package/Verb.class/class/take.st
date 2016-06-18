instance creation
take
	^(TVerb signatures: #(#take: #get:))
		objectsInScope: self locationScope;
		failMessageBlock: [ :obj | 'There''s no ', obj, ' here.' ]. 