Class {
	#name : #NormalCellTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #tests }
NormalCellTest >> test001IfCellHasNoCarsThenShouldNotBeOccupied [ [

	| aCell |
	aCell := NormalCell new.
	self deny: aCell isOccupied
]

]

{ #category : #tests }
NormalCellTest >> test002IfCellHasThreeCarsThenShouldBeOccupied [ 

	| aCell aCar anotherCar anotherAnotherCar |
	aCell := NormalCell new.
	aCar := 'test-car'.
	anotherCar := 'test-car-2'.
	anotherAnotherCar := 'test-car-3'.
	aCell enters: aCar.
	aCell enters: anotherCar.
	aCell enters: anotherAnotherCar.
	self assert: aCell isOccupied
]

{ #category : #tests }
NormalCellTest >> test003IfCellHasTwoCarsAndRemoveCarFromCellThenShouldBeOccupied [ 

	| aCell aCar anotherCar |
	aCell := NormalCell new.
	aCar := 'test-car'.
	anotherCar := 'test-car-2'.
	aCell enters: aCar.
	aCell enters: anotherCar.
	aCell leaves: aCar.
	self assert: aCell isOccupied
]
