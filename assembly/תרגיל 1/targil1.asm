include 'win32a.inc'

format PE console
entry start

section '.text' code readable executable
; ======================================
	
start:
	xor EAX, EAX
	and EBX, EAX
	mov ECX, EBX
	mul EDX
	
; ====================================

	push	0
	call	[ExitProcess]

include 'training.inc'

