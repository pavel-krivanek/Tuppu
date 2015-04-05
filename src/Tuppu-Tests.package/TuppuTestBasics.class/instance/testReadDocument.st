tests
testReadDocument

	| doc |
	
	doc := self simpleDocumentWithNumber.

	self test: [ :db |
			db store: doc.
			
			doc number: 8.
			doc := db read: doc.
			
			self assert: (doc number = 7)]

		afterReopen: [ :db |
			doc tuppuId: #root.
			self assert: (doc number = 7)]
	
	