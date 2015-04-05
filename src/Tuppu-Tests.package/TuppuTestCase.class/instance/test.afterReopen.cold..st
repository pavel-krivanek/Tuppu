tests support
test: aBlock afterReopen: aBlockAfterReopen cold: coldReopen

	| db name |
	
	name := UUID new asString. 
	
	db := Tuppu open: name.
	
	aBlock cull: db.
	
	coldReopen 
		ifTrue: [ 	
			db := nil.
			Smalltalk garbageCollect.
			db := Tuppu open: name. ]
		ifFalse: [ 
			db close. 
			db open: name. ].
		
	aBlockAfterReopen cull: db.
	
	db deleteDatabase.
	