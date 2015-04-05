tests
testOldVersions

	| doc doc2 versions |
	
	self test: [ :db |
			doc := TuppuTestDocument new.
			doc tuppuId: #root.
			1 to: 100 do: [ :i |
				doc number: i.
				db store: doc.].
		
			self assert: (db allRevisions size = 100)]
		afterReopen: [ :db |
			doc2 := db readId: #root.
			self assert: (doc2 number = 100 ).
			versions := db getAllVersions: doc2.
			self assert: (versions first number = 100).
			self assert: (versions size = 100) ].
	
	