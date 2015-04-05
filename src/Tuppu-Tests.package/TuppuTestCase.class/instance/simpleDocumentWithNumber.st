documents
simpleDocumentWithNumber

	| doc |

	doc := TuppuTestDocument new.
	doc tuppuId: #root.
	doc number: 7.
	
	^ doc