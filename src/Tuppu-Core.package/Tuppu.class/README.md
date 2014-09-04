Tuppu is a very simple document store that uses Fuel internally. 

"Tuppu" is an ancient akkadian word for clay tablets. 

Examples:
============

| db doc doc2 |
db := Tuppu open: 'testDatabase' .

doc := TuppuTestDocument new. "use own subclass here"

"save current version of the document to the database."
db store: doc.	

"save document under specified id"
db store: doc as: #root.	
"another way"
doc tuppuId: #root.
db store: doc.	

"read the latest saved version of the document from the database"
doc2 := db read: doc.

"read the latest version of the document with the specified id"
doc2 := db readId: #root.

"delete document from the database. It doesn't delete older versions from the database. It saves the new revision of the document marked as deleted."
db delete: doc.

"get all older versions of the document"
db getAllVersions: doc.

"close database"
db close.


============

You may look at the class TuppuTestBasics to see the next exaples

