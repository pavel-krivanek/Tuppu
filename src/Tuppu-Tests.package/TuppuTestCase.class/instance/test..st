as yet unclassified
test: aBlock 

	| db name |
	
	name := UUID new asString. 
	
	db := Tuppu open: name.
	
	aBlock cull: db.
	
	db deleteDatabase.
	