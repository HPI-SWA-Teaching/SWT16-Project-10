testing
testSearchForFirst
	| dict |
	self table: SBTable new.
	dict := Dictionary new.
	self table
		addRows: 4 withSize: 3;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 1 column: 3 value: 7;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4;
		row: 2 column: 3 value: 3;
		row: 3 column: 1 value: 5;
		row: 3 column: 2 value: 4;
		row: 3 column: 3 value: 9;
		row: 4 column: 1 value: 1;
		row: 4 column: 2 value: 8;
		row: 4 column: 3 value: 5.
	self assert: (self table searchForFirst: 1 inColumn: 1) equals: (self table rows at: 1).
	self assert: (self table searchForFirst: 4 inColumn: 2) equals: (self table rows at: 2).
	self assert: (self table searchForFirst: 4 inColumn: 1) equals: nil.