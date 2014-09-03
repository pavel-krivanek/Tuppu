accessing
open: databaseName

	mutex critical: [ 
		repository open: databaseName ].