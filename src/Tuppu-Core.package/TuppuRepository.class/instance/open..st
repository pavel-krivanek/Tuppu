file access
open: databaseName

	^ file := mutex critical: [(FileStream fileNamed: (self fileNameFor: databaseName)) binary]