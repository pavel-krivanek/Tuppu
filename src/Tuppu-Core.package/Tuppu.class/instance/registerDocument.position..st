private
registerDocument: aDocument position: aPosition

	| info  |

	" we suppose that newer revisions are always behind older ones "
	
	info := aDocument asTuppuDocumentInfo.
	info position: aPosition.
	allRevisions at: info revision put: info.
	aDocument tuppuDeleted 
		ifFalse: [
			index at: info id put: info]
		ifTrue: [
			index removeKey: info id ifAbsent: []].