documents
read: aDocument

	| info |
	info := index at: aDocument tuppuId.
	^ repository readAt: info position.