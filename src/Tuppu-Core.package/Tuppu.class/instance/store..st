documents
store: aDocument

	mutex critical: [
		aDocument tuppuDeleted: false.
		self privStore: aDocument.]