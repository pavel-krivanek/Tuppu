read/write
readAt: position

	mutex critical: [
		self position: position.
		^ (FLMaterializer newDefault materializeFrom: file) root].