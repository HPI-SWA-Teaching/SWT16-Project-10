math functions
maxForColumn: aColumn
	| max currentValue |
	max := nil.
	self rows do: [ :currentRow |
		currentValue := currentRow at: aColumn.
		currentValue ifNotNil: [
			max
				ifNil: [ max := currentValue ]. 
			currentValue > max ifTrue: [
				max := currentValue ]]].
	^ max