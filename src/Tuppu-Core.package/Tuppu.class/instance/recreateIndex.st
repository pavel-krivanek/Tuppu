private
recreateIndex

	mutex critical: [
		self initInternalIndexes.
		
		repository setToStart.
		[repository atEnd] whileFalse: [
			| aDocument position |
			position := repository position.
			aDocument := repository read.
			self registerDocument: aDocument position: position ]].