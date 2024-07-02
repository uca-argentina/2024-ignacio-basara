Class {
	#name : #AutoTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #asserting }
AutoTest >> should: anErrorBlock raise: exceptionClass withMessage: anErrorMessage [

    self
        should: anErrorBlock
        raise: exceptionClass
        withExceptionDo: [ :error |
        self assert: error messageText equals: anErrorMessage ]

]

{ #category : #asserting }
AutoTest >> testCambioDelAutoDePMaPrimeraASegunda [

	| anAuto |
	anAuto := Auto initializeWithGearBox.
	anAuto shiftGear.
	anAuto shiftGear.

	self assert: anAuto gear equals: 2

]

{ #category : #asserting }
AutoTest >> testCambioDelAutoVadePMaPrimera [

	| anAuto |
	anAuto := Auto initializeWithGearBox.
	anAuto shiftGear.
	self assert: anAuto gear equals: 1

]

{ #category : #asserting }
AutoTest >> testErrorCuandoCambioMayorQue5 [

	| anAuto |
	anAuto := Auto initializeWithGearBox.
	anAuto shiftGear.
	anAuto shiftGear.
	anAuto shiftGear.
	anAuto shiftGear.
	anAuto shiftGear.

	self
		should: [ anAuto shiftGear ]
		raise: Error
		withMessage: 'te pasaste de cambio'

]
