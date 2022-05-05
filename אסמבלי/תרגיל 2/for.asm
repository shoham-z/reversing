include 'win32a.inc'

format PE console
entry start

section '.text' code readable executable
; ======================================
	
start:
	
	call read_hex
	mov ecx, 0
	mov ebx, 0
for:
	add ecx, 1
	add ebx, ecx
	cmp eax, ecx
	jne for
	
	mov eax, ebx
	call print_eax

	
	
; ====================================

	push	0
	call	[ExitProcess]

include 'training.inc'

