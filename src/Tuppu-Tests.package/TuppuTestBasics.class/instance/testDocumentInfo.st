tests
testDocumentInfo

	| info1 info2 |
	
	info1 := TuppuDocumentInfo newUnique.
	info2 := TuppuDocumentInfo newUnique.
	
	self assert: (info1 id ~= info2 id).
	self assert: (info1 id notNil).
	self assert: (info1 deleted not).
	self assert: (info2 deleted not).
	self assert: (info1 revision isNil).
	self assert: (info2 revision isNil).
	self assert: (info1 previousRevision isNil).
	self assert: (info2 previousRevision isNil).
	
	
	
	