as yet unclassified
testDeleteDocument

	| doc doc2 |
	
	self test:[ :db |
			doc := TuppuTestDocument new.
			doc tuppuId: #root.
			doc number: 7.
			db store: doc.
			
			doc2 := db readId: #root.
			self assert: (doc2 number = 7).
			
			db delete: doc.
			self should: [db readId: #root] raise: TuppuDocumentMissing.

			]
		afterReopen: [ :db |
			self should: [db readId: #root] raise: TuppuDocumentMissing.
			 ].
	
	