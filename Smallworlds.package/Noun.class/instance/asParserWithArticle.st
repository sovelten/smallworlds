accessing
asParserWithArticle
	| articleP |
	articleP := SWParserFactory article.
	^self asParser / (articleP, #space asParser, self asParser)