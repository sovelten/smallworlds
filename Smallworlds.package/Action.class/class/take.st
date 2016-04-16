instance creation
take
	^(TAction signatures: #(#take: #get:))
		objectsInScope: self locationScope;
		failMessageBlock: [ :obj | 'There''s no ', obj, ' here.' ]. 