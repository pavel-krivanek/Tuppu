file access
position: aNumber

	^ mutex critical: [ file position: aNumber ].