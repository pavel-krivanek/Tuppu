tests
testMultipleCloses

	| db name doc  |
	
	name := UUID new asString. 
	
	db := Tuppu open: name.
	
	self assert: db isOpened.
	
	doc := self simpleDocumentWithNumber.
	db store: doc.
	
	self assert: db isOpened.
	
	db close. 

	self deny: db isOpened.

	db close. 

	self deny: db isOpened.
	
	db deleteDatabase.

	self deny: db isOpened.
	