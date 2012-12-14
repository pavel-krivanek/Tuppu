file access
position

	^ mutex critical: [ file position ].