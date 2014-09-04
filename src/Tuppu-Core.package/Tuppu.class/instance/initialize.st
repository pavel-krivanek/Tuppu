initialization
initialize

	"Initialization code for Tuppu"

	super initialize.

	mutex := Mutex new.
	repository := TuppuRepository new.
	
	self initInternalIndexes.