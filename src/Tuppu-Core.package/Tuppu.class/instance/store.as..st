documents
store: aDocument as: anId

	aDocument tuppuId: anId.

	mutex critical: [
		aDocument tuppuDeleted: false.
		self privStore: aDocument.]