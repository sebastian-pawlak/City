; "City", Atari XL/XE Intro 16B
; (15 bytes of code + 6 bytes of header)
; code by tr1x / Agenda
; requirements: original Atari XL/XE 64KB PAL
; version: 1.0
; release date: 2022-02-13

color2	equ $02c6
random	equ $d20a
osprint	equ $f1a4

        org color2-4

loop	lda random
	and #$a0
	adc #$01
        jsr osprint
	lda $bfff
	beq loop

	; "brk" comes here, nothing wrong happens on real hardware