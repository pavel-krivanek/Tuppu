file access
open

	^ mutex critical: [(FileStream fileNamed: self fileName) binary]