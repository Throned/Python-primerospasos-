; TODO INSERT CONFIG CODE HERE USING CONFIG BITS GENERATOR
  ; PIC18F45K20 Configuration Bit Settings

; Assembly source line config statements



#include "config.h"

    
RES_VECT  CODE    0x0000            ; processor reset vector
    bra    0x0018                   ; go to beginning of program
    ORG 0x0008
    incf	0x060
    movff	0x060,PORTD
    BCF		INTCON,2
    MOVLW	0X00
    MOVWF	TMR0L
    RETFIE	1
; TODO ADD INTERRUPTS HERE IF USED

MAIN_PROG CODE	  ; let linker place main program
    ORG 0X0018
	MOVLW   00h                      ; load constant trisD
	MOVWF   TRISD
	CLRF	PORTD
	MOVLW	0xC7
	MOVWF	T0CON
	MOVLW	0xF0
	MOVWF	INTCON
	MOVLW   0x00
	MOVWF	0x060
	MOVLW	0X80
	MOVWF	TMR0L
INICIO 	
	
	goto	$

    END