Class {
	#name : #OilCellTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #tests }
OilCellTest >> test001IfACarEntersAnOilCellAndGearIs0ShouldNotShiftDown [

	| anOilCell aCar |
	anOilCell := OilCell new.
	aCar := Car initializeWithGearBox.

	anOilCell enters: aCar.


	self assert: aCar gear equals: 0
	
]

{ #category : #tests }
OilCellTest >> test002IfOilCellHasOneCarInSecondTheyShouldGoDownToFirst [

	| anOilCell aCar |
	anOilCell := OilCell new.
	aCar := Car initializeWithGearBox.
	aCar shiftGearUp.
	aCar shiftGearUp.

	anOilCell enters: aCar.


	self assert: aCar gear equals: 1
]
