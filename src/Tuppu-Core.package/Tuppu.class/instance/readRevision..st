accessing
readRevision: anId

	| info |
	info := allRevisions at: anId.
	^ repository readAt: info position.