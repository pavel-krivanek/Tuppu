tests support
testWithReopen: aBlock 

	self test: aBlock afterReopen: aBlock cold: false.
	self test: aBlock afterReopen: aBlock cold: true.
	