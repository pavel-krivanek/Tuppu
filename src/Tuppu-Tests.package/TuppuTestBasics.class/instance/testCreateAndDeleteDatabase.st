tests
testCreateAndDeleteDatabase

	| db name |
	
	name := UUID new asString. 
	
	db := Tuppu open: name.
	self assert: (db repository fileReference exists).
	self assert: (db databaseName = name).
	
	db deleteDatabase.
	self assert: (db repository fileReference exists not).
	