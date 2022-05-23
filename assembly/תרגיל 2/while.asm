include 'win32a.inc'

format PE console
entry start


section '.text' code readable executable
; ======================================
	
start:
	
	mov ecx, 0
	mov edx, 1
	call read_hex
	mov ebx, eax
	mov eax, ecx
	call print_eax
	mov eax, edx
	call print_eax
whil:
	add eax, ecx
	mov ecx, edx 
	mov edx, eax
	
	cmp edx, ebx
	jg finish
	
	call print_eax
	
	jmp whil
	
finish:
	
	

	
	
; ====================================

	push	0
	call	[ExitProcess]

include 'training.inc'

