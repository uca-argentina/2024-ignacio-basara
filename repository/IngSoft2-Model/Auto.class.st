Class {
	#name : #Auto,
	#superclass : #Object,
	#instVars : [
		'gear'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #initialization }
Auto class >> initializeWithGearBox [

	^ self new initializeWithGearBox
]

{ #category : #initialization }
Auto >> gear [

	^ gear
]

{ #category : #initialization }
Auto >> initializeWithGearBox [ 

	gear := 0
]

{ #category : #initialization }
Auto >> shiftGear [

	gear = 5 ifTrue: [ Error signal: 'te pasaste de cambio' ].
	gear := gear + 1
]
