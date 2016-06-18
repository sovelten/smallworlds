instance creation
lookAt
	^(TVerb signatures: #(#look: #describe: #examine: #l: #x:))
		failMessageBlock: [ :obj | 'I can''t see ', obj, ' here.' ]