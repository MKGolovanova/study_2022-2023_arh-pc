;----------------------------------------------------
; Программа вычисления выражения 𝑦 = 𝑓(𝑥), вариант 19
;----------------------------------------------------
%include 'in_out.asm' ; подключение внешнего файла
SECTION .data
msg: DB 'Введите число: ',0
rem: DB 'Результат: ',0

SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:

mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
xor edx,edx ; обнуляем EDX для корректной работы div
mov ebx,3 ; EBX=3
div ebx ; EAX=EAX/3, EDX=остаток от деления
add eax,5 ; EAX=EAX+5
mov ebx,7 ; EBX=7
mul ebx ; EAX=EAX*EBX
mov edi,eax ; запись результата вычисления в 'edi'

mov eax,rem ; вызов подпрограммы печати
call sprint ; сообщения 'Результат: '
mov eax,edi ; вызов подпрограммы печати значения
call iprintLF ; из 'edi' в виде символов

call quit ; вызов подпрограммы завершения
