accessing
getAllVersions: aDocument

	| currentVersion result info |
	result := OrderedCollection new.
	currentVersion := self read: aDocument.
	result add: currentVersion.
	info := aDocument asTuppuDocumentInfo.
	[ info previousRevision notNil ] whileTrue: [
		info := allRevisions at: info previousRevision].
		result add: (self readRevision: info revision).
	^ result.