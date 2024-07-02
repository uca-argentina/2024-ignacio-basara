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
	aCar shiftGearUp.
	self assert: aCar gear equals: 1

]

{ #category : #tests }
CarTest >> test002CarShiftGoesFromNeutralToFirstToSecondGear [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.

	self assert: aCar gear equals: 2
]

{ #category : #tests }
CarTest >> test003ErrorWhenChangeIsGreaterThan5 [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
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
CarTest >> test004CarShiftGoesFromNeutralToFirstToNeutralGear [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearDown.
	

	self assert: aCar gear equals: 0
]

{ #category : #tests }
CarTest >> test005CarShiftGoesFromNeutralToFirstToSecondToThirdToSecondToFirstGear [

	| aCar |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearDown.
	aCar shiftGearDown.
	

	self assert: aCar gear equals: 1
]

{ #category : #tests }
CarTest >> test006ErrorWhenChangeIsSmallerThan0 [

	| aCar |
	aCar := Car initializeWithGearBox.

	self
		should: [ aCar shiftGearDown ]
		raise: Error
		withMessage: 'You cant go lower'
]
