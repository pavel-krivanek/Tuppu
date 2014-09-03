initialize
initialize
	"Initialization code for TuppuRepository"

	super initialize.

	id := UUID new.
	mutex := Mutex new.
