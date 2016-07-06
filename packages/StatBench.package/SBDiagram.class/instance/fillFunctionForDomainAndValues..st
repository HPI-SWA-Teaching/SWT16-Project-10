data management
fillFunctionForDomainAndValues: yValues
	| value |
	self function: IdentityDictionary new.
	1 to: self domain size do: [ :index |
		value := yValues at: index ifAbsent: [ 0 ].
		self function add: (self domain at: index) -> value ]