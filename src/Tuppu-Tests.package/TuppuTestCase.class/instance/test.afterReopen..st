tests support
test: aBlock afterReopen: aBlockAfterReopen

	self test: aBlock afterReopen: aBlockAfterReopen cold: false.
	self test: aBlock afterReopen: aBlockAfterReopen cold: true.
	