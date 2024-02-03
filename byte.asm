		ORG 0100H
;
; extended vs. immediate as chosen by the assembler
; (Motorola assembler considers the operand and chooses the opcode to fit)
		ADDA #0123H	;extended
		ADDA #32H		;immed

		ADDA #-127		;range of immediate test
		ADDA #-128
		ADDA #-129
		ADDA #254
		ADDA #255
		ADDA #256


		ADDA 0123H		;extended
		ADDA 32H		;immed
		ADDA -1		;testing range of immediate -127D to 255D
		ADDA low -1	;force to byte size
		ADDA -127
		ADDA -128
		ADDA -129
		ADDA low -127
		ADDA low -128
		ADDA low -129
		ADDA 254
		ADDA 255
		ADDA 256

		END
