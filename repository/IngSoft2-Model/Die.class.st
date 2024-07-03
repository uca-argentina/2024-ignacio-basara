Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
Die class >> of: aGear [
	^ self new initializeWith: aGear

]

{ #category : #initialization }
Die >> initializeWith: aGear [
	 
	
	aGear = 1
		ifTrue: [ faces:=1 ]
		ifFalse: [
			aGear = 2
				ifTrue: [ faces := 2 ]
				ifFalse: [ 
					aGear = 3
						ifTrue: [ faces := 3 ]
						ifFalse: [ 
							aGear = 4
								ifTrue: [ faces := 4 ]
								ifFalse: [ 
									aGear = 5
										ifTrue: [ faces := 5 ]
									
								]
						]
				]
		].

		
]

{ #category : #initialization }
Die >> throw [ 

faces = 1 ifTrue: [^((1 to: 3) atRandom) ] ifFalse: [
		faces= 2 ifTrue: [ ^((2 to: 4) atRandom) ] ifFalse: [
			faces= 3 ifTrue: [ ^((5 to: 8) atRandom) ] ifFalse: [
				faces= 4 ifTrue: [ ^((7 to: 11) atRandom) ] ifFalse: [
					faces= 5 ifTrue: [ ^((1 to: 20)) atRandom ] 
				
		     ]	
			]
		]
	].
	 

]
