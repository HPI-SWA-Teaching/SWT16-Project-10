testing
testMaxRangeForCollection
	self 
		assert: (self strategy maxRangeForCollection: ({1 .  2 . 3 . 4} asOrderedCollection)) = 4;
		assert: (self strategy maxRangeForCollection: ({4 . 5 . 6 . 17} asOrderedCollection)) = 20;
		assert: (self strategy maxRangeForCollection: ({27 . 37 . 47 . 5} asOrderedCollection)) = 50;
		should: 	[self strategy maxRangeForCollection: ({-5 . -6} asOrderedCollection)]  raise: Error.