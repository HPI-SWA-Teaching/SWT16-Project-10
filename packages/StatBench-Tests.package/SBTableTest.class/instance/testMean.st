testing
testMean
	self table: SBTable new.
	self table
		addRows: 2 size: 3;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.5.
	self
		assert: (self table meanForColumn: 1) equals: (3 + 1 / 2);
		assert: (self table meanForColumn: 2) equals: (2 + 4.5 / 2);
		assert: (self table meanForColumn: 3) isNil