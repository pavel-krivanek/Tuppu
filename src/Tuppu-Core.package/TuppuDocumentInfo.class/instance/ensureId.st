accessing
ensureId

	^ id := id ifNil: [UUID new].