Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #asserting }
DieTest >> testWhenGearIsFiveFacedDieReturnsBetweenOneAndTwenty [
	| aCar aDie |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aDie:=	 Die of: aCar gear.
	self assert: (aDie throw between: 1 and: 20).

]

{ #category : #asserting }
DieTest >> testWhenGearIsOneThreeFacedDieReturnsBetweenOneAndThree [
	| aCar aDie |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aDie:=	 Die of: aCar gear.
	self assert: (aDie throw between: 1 and: 3).

]

{ #category : #asserting }
DieTest >> testWhenGearIsThreeFacedDieReturnsBetweenFiveAndEight [
	| aCar aDie |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aCar shiftGearUp.

	aDie:=	 Die of: aCar gear.
	self assert: (aDie throw between: 5 and: 8).

]

{ #category : #asserting }
DieTest >> testWhenGearIsTwoThreeFacedDieReturnsBetweenFourAndSix [
	| aCar aDie |
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.
	aDie:=	 Die of: aCar gear.
	self assert: (aDie throw between: 2 and: 4).

]
