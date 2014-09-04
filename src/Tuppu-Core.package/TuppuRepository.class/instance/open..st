file access
open: databaseName

	fileReference := self fileReferenceFor: databaseName.

	^ file := mutex critical: [(FileStream fileNamed: fileReference) binary]