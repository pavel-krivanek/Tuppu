instance creation
newUnique

	| info |
	info := self new.
	info id: UUID new.
	info revision: nil.
	info previousRevision: nil.
	info deleted: false.
	^ info
