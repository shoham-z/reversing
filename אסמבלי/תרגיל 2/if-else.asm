include 'win32a.inc'

format PE console
entry start

section '.text' code readable executable
; ======================================
	
start:
	
	call read_hex
	mov ecx, eax
	call read_hex
	mov ebx, eax
	mov eax, ecx
	
	cmp eax, ebx
	jnz equal

	mov eax, 1
	call print_eax
	jmp next
equal:
	mov eax, 0
	call print_eax
next:
	

	
	
; ====================================

	push	0
	call	[ExitProcess]

include 'training.inc'

