tests
testDeleteDocument

	| doc doc2 |
	
	self test:[ :db |
			doc := self simpleDocumentWithNumber.
			db store: doc.
			
			doc2 := db readId: #root.
			self assert: (doc2 number = 7).
			
			db delete: doc.
			self should: [db readId: #root] raise: TuppuDocumentMissing.

			]
		afterReopen: [ :db |
			self should: [db readId: #root] raise: TuppuDocumentMissing.
			 ].
	
	