accessing
asTuppuDocumentInfo

	| info |
	info := TuppuDocumentInfo new.
	info id: self tuppuId.
	info revision: self tuppuRevision.
	info previousRevision: self tuppuPreviousRevision.
	^ info
	