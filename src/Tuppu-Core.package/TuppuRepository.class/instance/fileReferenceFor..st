accessing
fileReferenceFor: databaseName

	^ FileSystem disk workingDirectory / ('tuppuDatabase-', databaseName asString, '.fuel') 