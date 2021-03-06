testing
testRawValueSetting
	self table: SBTable new.
	self table
		addRows: 4 size: 2;
		row: 1 column: 1 value: '1' raw: false;
		row: 1 column: 2 value: 2.2 raw: false;
		row: 2 column: 1 value: '1.1' raw: false;
		row: 2 column: 2 value: 1 raw: true;
		row: 3 column: 1 value: 2.2 raw: true;
		row: 3 column: 2 value: 'abc' raw: true;
		row: 4 column: 1 value: 3.2;
		row: 4 column: 2 value: 'abc'.
	self
		deny: (self table row: 1 column: 1) isString;
		assert: (self table row: 1 column: 2) class equals: ArbitraryPrecisionFloat;
		assert: (self table row: 2 column: 1) class equals: ArbitraryPrecisionFloat;
		assert: (self table row: 2 column: 2) equals: 1;
		assert: (self table row: 3 column: 1) equals: 2.2;
		assert: (self table row: 3 column: 2) equals: 'abc';
		assert: (self table row: 4 column: 1) equals: 3.2;
		assert: (self table row: 4 column: 2) equals: 'abc';
		should: [self table row: 1 column: 1 value: 'abc' raw: false ] raise: Error