accessing
readId: anId

	| info |
	info := index at: anId.
	^ repository readAt: info position.