as yet unclassified
object: object at: n
	^[ :action | 
		action arguments at: n put: object.
		action status: #parsed.
	 ]