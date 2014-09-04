as yet unclassified
testReadDocument

	| doc |
	
	self test: [ :db |
			doc := TuppuTestDocument new.
			doc tuppuId: #root.
			doc number: 7.
			db store: doc.
			
			doc number: 8.
			doc := db read: doc.
			
			self assert: (doc number = 7)]

		afterReopen: [ :db |
			doc tuppuId: #root.
			self assert: (doc number = 7)]
	
	