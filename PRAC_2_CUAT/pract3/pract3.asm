/*-----------------------------------------------------------------
**
**  Fichero:
**    pract3.asm  10/6/2014
**
**    Fundamentos de Computadores
**    Dpto. de Arquitectura de Computadores y Autom�tica
**    Facultad de Inform�tica. Universidad Complutense de Madrid
**
**  Prop�sito:
**    Ordena de mayor a menor un vector de enteros positivos
**
**  Notas de dise�o:
**    Utiliza una subrutina que devuelve la posici�n del valor
**    m�ximo de un vector de enteros positivos
**
**---------------------------------------------------------------*/




.extern _stack
.global start

.EQU 	N, 8

.data
A: 		.word 7,3,25,4,75,2,1,1

.bss
B: 		.space N*4

.text
start:
		ldr sp,=_stack
		mov fp,#0
		@ Terminar de codificar
