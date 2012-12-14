file access
atEnd

	^ mutex critical: [file atEnd ]