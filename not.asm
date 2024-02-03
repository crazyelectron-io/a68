	org  0100h
cmsk	equ  11111100B
pmsk	equ  11001111B
rmsk equ  11110011B
rrrr equ  not rmsk
pppp equ  not pmsk
ttyda equ 01H
crtda equ 40H

aaa	equ	1234H
bbb	equ	not 1234H

	fcb  01H
	fcb  not 01H
	fcb  not cmsk
	fdb  not rmsk
 
	suba 0DH
	suba 1234H
	suba not 0DH
	suba not 1234H

	suba #cmsk
	suba #pmsk
	suba #(not pmsk)
	suba # low (not cmsk)
	suba #(not 0FCH)
	suba #(not 0CFH)
	suba #0C0H
	suba #0FH
	suba #(not 0FH)
	suba #crtda
	suba #(not crtda)
	suba #rmsk
	suba #(not rmsk)


	end




