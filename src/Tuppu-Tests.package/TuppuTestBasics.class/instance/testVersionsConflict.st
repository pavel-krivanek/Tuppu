tests
testVersionsConflict

	| doc1 doc2 |
	
	self test: [ :db |
			doc1 := TuppuTestDocument new.
			doc1 number: 7.
			db store: doc1 as: #root.
			
			doc2 := db readId: #root.
			self assert: (doc1 tuppuRevision = doc2 tuppuRevision).
			doc2 number: 8.
			db store: doc2.
			db store: doc2. "shouldn't raise Exception"
			
			self should: [db store: doc1] raise: TuppuVersionsConflict.]

		
	
	