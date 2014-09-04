as yet unclassified
testStoreReadDocument

	| db name doc doc2 |
	
	name := UUID new asString. 
	
	db := Tuppu open: name.
	
	self assert: db isOpened.
	
	doc := TuppuTestDocument new.
	doc tuppuId: #root.
	doc number: 7.
	db store: doc.
	
	doc2 := db readId: #root.
	self assert: (doc2 number = 7).
	
	doc number: 8.
	doc2 := db read: doc.
	self assert: (doc2 number = 7).
	self assert: (doc number = 8).
	
	db deleteDatabase.
	