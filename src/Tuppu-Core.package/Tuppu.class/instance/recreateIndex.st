initialize
recreateIndex

	mutex critical: [
		self initInternalIndexes.
		
		repository setToStart.
		[repository atEnd] whileFalse: [
			| aDocument info position |
			position := repository position.
			aDocument := repository read.
			self registerDocument: aDocument position: position ]].