tests
testDocumentMissing
	
	self test:[ :db |
		self should: [db readId: #root] raise: TuppuDocumentMissing ].
	