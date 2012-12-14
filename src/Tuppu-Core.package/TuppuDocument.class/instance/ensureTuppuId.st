accessing
ensureTuppuId

	^ tuppuId := tuppuId ifNil: [UUID new].