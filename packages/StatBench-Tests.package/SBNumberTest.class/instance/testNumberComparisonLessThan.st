testing
testNumberComparisonLessThan
	| val |
	val := 5.5.
	self number: (SBNumber newFromFloat: val).
	val := 6.5.
	self assert: self number < (SBNumber newFromFloat: val).
	self assert: self number < val.
	
	val := 1.
	self number: (SBNumber newFromInt: val).
	val := 2.
	self assert: self number < (SBNumber newFromInt: val).
	self assert: self number < val