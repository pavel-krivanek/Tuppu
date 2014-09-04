documents
delete: aDocument

	mutex critical: [
		aDocument tuppuDeleted: true.
		self privStore: aDocument.]
