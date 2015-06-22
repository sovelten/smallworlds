private
parseVerb: aString
	"Tries to parse a string using the verb dictionary, returning an action"

	self parseVerb: aString
		ifFailed: [ ^SayAction saying:'I don''t understand this command.' ]