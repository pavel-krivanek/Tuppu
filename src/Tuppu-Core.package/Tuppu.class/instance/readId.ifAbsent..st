documents
readId: anId ifAbsent: aBlock

	| info absent | 
	absent := false.
	info := index at: anId ifAbsent: [ absent := true. ].
	^ absent
		ifFalse: [ repository readAt: info position]
		ifTrue: [ aBlock value ]