tests
testRevisionsOfUndeletedDocument

	| doc |
	
	self test:[ :db |
			doc := self simpleDocumentWithNumber.
			db store: doc.

			self assert: (db allRevisions size = 1).
			db delete: doc.
			self assert: (db allRevisions size = 2).
			db store: doc.
			self assert: (db allRevisions size = 3) ]

		afterReopen: [ :db |
			self assert: (db allRevisions size = 3).
			 ].
	
	