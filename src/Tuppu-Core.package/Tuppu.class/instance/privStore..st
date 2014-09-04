private
privStore: aDocument

	| oldInfo newInfo    |
	
	mutex critical: [
		self assert: (aDocument isTuppuDocument).
		oldInfo := index at: aDocument tuppuId ifAbsent: nil.
		(oldInfo notNil and: [oldInfo revision ~= aDocument tuppuRevision]) ifTrue: [
			TuppuVersionsConflict signal].
		
		newInfo := oldInfo copy ifNil: [aDocument asTuppuDocumentInfo].
		newInfo
			revision: UUID new;
			previousRevision: (oldInfo ifNotNil: [oldInfo revision]); "nil or old revision"
			position: nil.

		aDocument tuppuInfo: newInfo.
		newInfo position: (repository store: aDocument).	
				
		allRevisions at: newInfo revision put: newInfo.
		aDocument tuppuDeleted 
			ifFalse: [ index at: newInfo id put: newInfo]
			ifTrue: [ index removeKey: newInfo id ifAbsent: [self duplicateDeletion: aDocument]].
		
		^ aDocument
		]