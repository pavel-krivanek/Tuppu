tests
testStoreReadDocument

	| db name doc doc2 |
	
	name := UUID new asString. 
	
	db := Tuppu open: name.
	
	self assert: db isOpened.
	
	doc := self simpleDocumentWithNumber.
	db store: doc.
	
	doc2 := db readId: #root.
	self assert: (doc2 number = 7).
	
	doc number: 8.
	doc2 := db read: doc.
	self assert: (doc2 number = 7).
	self assert: (doc number = 8).
	
	db deleteDatabase.
	