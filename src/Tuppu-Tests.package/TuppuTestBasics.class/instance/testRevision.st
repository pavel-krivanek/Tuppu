tests
testRevision

	| doc doc2 rev |
	
	doc := nil.
	
	self test: [ :db |
			doc := TuppuTestDocument new.
			doc number: 7.
			self assert: (doc tuppuRevision isNil).
			self assert: (doc tuppuPreviousRevision isNil).

			db store: doc as: #root.
			self assert: (doc tuppuRevision notNil).
			self assert: (doc tuppuPreviousRevision isNil). 
			rev := doc tuppuRevision.
			
			db store: doc.
			self assert: (doc tuppuRevision notNil).
			self assert: (doc tuppuPreviousRevision notNil). 
			self assert: (doc tuppuPreviousRevision = rev). 
			]
		afterReopen: [ :db |
			doc2 := db readId: #root.
			self assert: (doc2 number = 7).
			self assert: (doc2 tuppuRevision = doc tuppuRevision)
			 ].
	
	