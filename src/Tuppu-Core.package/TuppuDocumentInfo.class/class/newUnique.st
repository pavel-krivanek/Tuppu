as yet unclassified
newUnique

	| info |
	info := self new.
	info id: UUID new.
	info revision: UUID new.
	info previousRevision: nil.
	info deleted: false.
	^ info
