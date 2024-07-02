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

	gear := 0
]

{ #category : #initialization }
Car >> shiftGear [

	gear = 5 ifTrue: [ Error signal: 'You went too far' ].
	gear := gear + 1
]
