opening, closing
open: aDatabaseName

	| firstOpening |
	
	firstOpening := self isOpened not.

	databaseName := aDatabaseName.

	mutex critical: [ 
		repository open: aDatabaseName ].
	
	firstOpening ifTrue: [ self recreateIndex].
