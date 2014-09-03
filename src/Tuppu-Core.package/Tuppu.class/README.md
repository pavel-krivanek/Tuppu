db := Tuppu open: 'test'.

doc := TuppuTestDocument new.

db store: doc.
db delete: doc.

db index size
db allRevisions size.

[1 to: 400 do: [:i | 
		doc number: i.
		db store: doc]] timeToRun.

db allRevisions size.

db getAllVersions: doc.

db close
