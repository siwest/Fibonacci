TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data

num1 WORD 0d;
num2 WORD 1d;


.code
main PROC
	mov eax, 0		;set eax register to zero
	mov ebx, 0		;set ebx register to zero
	call WriteInt		;write "0" to console
	mov eax, 1
	;call WriteInt		;write "0" to console

	mov ecx, 27d

	fib:
		call WriteInt
		mov ax, num1	;sets eax=num1
		add ax, num2	;add num2 to eax

		mov bx, num2	
		mov num1, bx	;
		
		mov num2, ax	;next current value = num1



		
		loop fib
	exit
main ENDP

END main