include 'win32a.inc'

format PE console
entry start

section '.idata' data readable writeable
library kernel32, 'kernel32.dll',\
		msvcrt, 'msvcrt.dll'
		
import	kernel32,\
		ExitProcess, 'ExitProcess'

import msvcrt, \
	printf, 'printf'
	
section '.data' data readable writeable
    result    dd  ?
	msg			db "result is %d, should be 30"

	
section '.text' code readable executable
	
	
	
	start:
	push 5
	push 6
	push result
	call my_mul
	push [result]
	push msg
	call printf
	
	push 0
	call [ExitProcess]
	
my_mul:
	push ebp
	mov ebp, esp
	
	mov eax, [ebp+16]
	mov ebx, [ebp+12]
	mul ebx
	mov ecx, eax
	lea eax, [ebp+8]
	mov eax, ecx
	pop ebp
	ret 12