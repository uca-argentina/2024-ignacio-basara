Class {
	#name : #CarTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #asserting }
CarTest >> should: anErrorBlock raise: exceptionClass withMessage: anErrorMessage [

    self
        should: anErrorBlock
        raise: exceptionClass
        withExceptionDo: [ :error |
        self assert: error messageText equals: anErrorMessage ]

]

{ #category : #tests }
CarTest >> test001CarShiftGoesFromNeutralToFirstGear [

	| aCar |
	aCar:= Car initializeWithGearBox.
	aCar shiftGear.
	self assert: aCar gear equals: 1

]

{ #category : #tests }
CarTest >> test002CarShiftGoesFromNeutralToFirstToSecondGear [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGear.
	aCar shiftGear.

	self assert: aCar gear equals: 2
]

{ #category : #tests }
CarTest >> test003ErrorWhenChangeIsGreaterThan5 [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGear.
	aCar shiftGear.
	aCar shiftGear.
	aCar shiftGear.
	aCar shiftGear.

	self
		should: [ aCar shiftGear ]
		raise: Error
		withMessage: 'You went too far'
]
