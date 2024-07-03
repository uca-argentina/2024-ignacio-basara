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
CarTest >> test001CarShiftGoesFromFirstToSecondGear [

	| aCar |
	aCar:= Car initializeWithGearBox.
	aCar shiftGearUp.
	self assert: aCar gear equals: 2

]

{ #category : #tests }
CarTest >> test002CarShiftGoesFromFirstToSecondToThirdGear [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.

	self assert: aCar gear equals: 3
]

{ #category : #tests }
CarTest >> test003ErrorWhenChangeIsGreaterThan5 [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearUp.

	self
		should: [ aCar shiftGearUp ]
		raise: Error
		withMessage: 'You went too far'
]

{ #category : #tests }
CarTest >> test004CarShiftGoesFromFirstToSecondToFirstGear [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearDown.
	

	self assert: aCar gear equals: 1
]

{ #category : #tests }
CarTest >> test005CarShiftGoesFromFirstToSecondToThirdToFourToThirdToSecondGear [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearDown.
	aCar shiftGearDown.
	

	self assert: aCar gear equals: 2
]
