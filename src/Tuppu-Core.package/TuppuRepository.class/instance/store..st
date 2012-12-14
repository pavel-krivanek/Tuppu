read/write
store: anObject

	| position |
	
	mutex critical: [
		file setToEnd.
		position := file position.
		FLSerializer newLight serialize: anObject on: file.
		file flush.
		^ position ].