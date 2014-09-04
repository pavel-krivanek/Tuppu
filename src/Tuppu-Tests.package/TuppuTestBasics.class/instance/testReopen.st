as yet unclassified
testReopen

	| db name doc doc2 |
	
	name := UUID new asString. 
	
	db := Tuppu open: name.
	
	self assert: db isOpened.
	
	doc := TuppuTestDocument new.
	doc tuppuId: #root.
	doc number: 7.
	db store: doc.
	
	self assert: db isOpened.
	
	db close. 

	self shouldnt: db isOpened.

	db open: name.

	self assert: db isOpened.

	doc2 := db readId: #root.
	self assert: (doc2 number = 7).
	
	doc number: 8.
	doc2 := db read: doc.
	self assert: (doc2 number = 7).
	self assert: (doc number = 8).
	
	db close.

	self deny: db isOpened.
	
	db deleteDatabase.

	self deny: db isOpened.
	