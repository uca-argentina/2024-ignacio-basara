Class {
	#name : #DummyTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #'as yet unclassified' }
DummyTest >> loadedFace [ 

 | loadedFace |
^loadedFace
]

{ #category : #tests }
DummyTest >> testBanana [

	self assert: 1 equals: 1
]

{ #category : #tests }
DummyTest >> testDummy [

	self assert: Dummy new isDummy
]
