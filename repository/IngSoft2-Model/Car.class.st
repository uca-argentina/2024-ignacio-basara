Class {
	#name : #Car,
	#superclass : #Object,
	#instVars : [
		'gear'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #initialization }
Car class >> initializeWithGearBox [

	^ self new initializeWithGearBox
]

{ #category : #accessing }
Car >> gear [

	^ gear
]

{ #category : #initialization }
Car >> initializeWithGearBox [ 

	gear := 1
]

{ #category : #'as yet unclassified' }
Car >> shiftGearDown [

	gear = 1 ifTrue: [ Error signal: 'You cant go lower' ].
	gear := gear - 1
]

{ #category : #initialization }
Car >> shiftGearUp [

	gear = 5 ifTrue: [ Error signal: 'You went too far' ].
	gear := gear + 1
]
