Class {
	#name : #LoadedDieTest,
	#superclass : #TestCase,
	#classInstVars : [
		'aLoadedDieInOne'
	],
	#category : #'IngSoft2-Tests'
}

{ #category : #'as yet unclassified' }
LoadedDieTest >> test001WhenLoadedFaceIsOneItThrowsOne [

	| aLoadedDieInFive  aLoadedDieInOne |
	aLoadedDieInOne := LoadedDie in: 1.
	self assert: (aLoadedDieInOne throw) equals: 1. 
]

{ #category : #'as yet unclassified' }
LoadedDieTest >> test002WhenLoadedFaceIsFourItThrowsFour [

| aLoadedDieInFour aLoadedDieInSix |
aLoadedDieInFour := LoadedDie in: 4.
self assert: (aLoadedDieInFour throw) equals: 4.
]
