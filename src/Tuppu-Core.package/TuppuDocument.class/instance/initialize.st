accessing
initialize

	super initialize.

	tuppuId := UUID new.
	tuppuRevision := UUID new.
	tuppuPreviousRevision := nil.
	tuppuDeleted := false.