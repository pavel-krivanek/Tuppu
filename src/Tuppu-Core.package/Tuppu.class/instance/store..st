accessing
store: aDocument

	| oldInfo newInfo oldRevisionId newRevisionId newPosition |
	
	mutex critical: [
		self assert: (aDocument isTuppuDocument).
		oldInfo := index at: aDocument tuppuId ifAbsent: nil.
		(oldInfo notNil and: [oldInfo revision ~= aDocument tuppuRevision]) ifTrue: [
			TuppuVersionsConflict signal].
		
		newInfo := oldInfo copy ifNil: [aDocument asTuppuDocumentInfo].
		newInfo
			revision: UUID new;
			previousRevision: (oldInfo ifNotNil: [oldInfo revision]); "nil or old revision"
			position: (repository store: aDocument).

		 aDocument tuppuRevision: newInfo revision.
		 aDocument tuppuPreviousRevision: newInfo previousRevision.
		
		allRevisions at: newInfo revision put: newInfo.
		aDocument tuppuDeleted 
			ifFalse: [ index at: newInfo id put: newInfo]
			ifTrue: [ index removeKey: newInfo id ifAbsent: [self duplicateDeletion: aDocument]].
		
		^ aDocument
		]