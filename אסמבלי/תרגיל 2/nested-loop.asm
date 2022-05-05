include 'win32a.inc'

format PE console
entry start

section '.text' code readable executable
; ======================================
	
start:
	
	call read_hex
	mov edx, eax
	mov ebx, 0
for1:
	add ebx, 1
	mov eax, 0
for2:

	add eax, 1
	call print_eax
	cmp ebx, eax
	jne for2
	cmp edx, ebx
	jne for1
	
	

	
	
; ====================================

	push	0
	call	[ExitProcess]

include 'training.inc'

