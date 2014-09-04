The TuppuDocumentInfo stores information about document version.  Instances are part of the TuppuDocuments and are used in the database indexes.

Tuppu users should not work directly with this class.

Instance Variables
	deleted:		is the document deleted
	id:		document UUID
	position:		physical position in the data file
	previousRevision:		an UUID of the previous revision
	revision:		revision UUID
