initialize
initialize
	"Initialization code for TuppuRepository"

	super initialize.

	mutex := Mutex new.
	file := self open.
