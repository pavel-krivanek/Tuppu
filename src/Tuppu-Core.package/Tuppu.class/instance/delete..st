accessing
delete: aDocument

	mutex critical: [
		aDocument tuppuDeleted: true.
		self store: aDocument.]
