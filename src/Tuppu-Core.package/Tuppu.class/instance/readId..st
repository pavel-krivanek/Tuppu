documents
readId: anId

	^ self readId: anId ifAbsent: [  TuppuDocumentMissing signal  ]	
	