Class {
	#name : #Cell,
	#superclass : #Object,
	#instVars : [
		'cars'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #testing }
Cell >> enters: aCar [

	self subclassResponsibility
]

{ #category : #testing }
Cell >> initialize [ 

	cars := OrderedCollection new

]

{ #category : #testing }
Cell >> isOccupied [

	^ cars notEmpty
]

{ #category : #testing }
Cell >> leaves: aCar [

	[ cars remove: aCar ]
]
