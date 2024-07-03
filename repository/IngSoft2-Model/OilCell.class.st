Class {
	#name : #OilCell,
	#superclass : #Cell,
	#category : #'IngSoft2-Model'
}

{ #category : #testing }
OilCell >> enters: aCar [

	aCar gear = 0 ifFalse: [ aCar shiftGearDown ].

	cars add: aCar
]
