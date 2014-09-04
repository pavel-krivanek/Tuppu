as yet unclassified
testRevisionsOfUndeletedDocument

	| doc |
	
	self test:[ :db |
			doc := TuppuTestDocument new.
			doc tuppuId: #root.
			doc number: 7.
			db store: doc.

			self assert: (db allRevisions size = 1).
			db delete: doc.
			self assert: (db allRevisions size = 2).
			db store: doc.
			self assert: (db allRevisions size = 3) ]

		afterReopen: [ :db |
			self assert: (db allRevisions size = 3).
			 ].
	
	