read/write
read

	mutex critical: [
		^ (FLMaterializer newDefault materializeFrom: file) root].