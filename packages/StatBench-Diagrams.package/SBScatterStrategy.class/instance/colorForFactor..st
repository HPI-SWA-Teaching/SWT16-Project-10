data management
colorForFactor: factor
	^ self colorDictionary at: factor ifAbsentPut: [ self generateColorForString: factor asString ]