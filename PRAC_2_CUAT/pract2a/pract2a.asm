/*-----------------------------------------------------------------
**
**  Fichero:
**    pract2a.asm  10/6/2014
**
**    Fundamentos de Computadores
**    Dpto. de Arquitectura de Computadores y Autom�tica
**    Facultad de Inform�tica. Universidad Complutense de Madrid
**
**  Prop�sito:
**    Busca el valor m�ximo de un vector de enteros positivos
**
**  Notas de dise�o:
**
**---------------------------------------------------------------*/
//Soluci�n Apartado A

@Ejercicio A
.global start
.EQU 	N, 8
.data
	A: .word 7,3,25,4,75,2,1,1
.bss
	max: .space 4
.text
start: 	mov r0, #0
		ldr r1,=max @ Leo la dir. de max
		str r0,[r1] @ Escribo 0 en max
		ldr r3,=A	@ Direcci�n base dle array
		MOV r2,#0   @ Inicializamos i
 for: 	 CMP r2,#N
		 BGE finfor
		 LDR r4,[r3,r2,lsl#2]	/* leemos el elemento i-�simo del vector A*/
		 ADD r2,r2,#1
  if:     CMP r4,r0
	      BLE for
   		  MOV r0,r4
 		  STR r0,[r1]
		 B for
finfor:	B .
.end






// Original
.global start

.EQU 	N, 8

.data
A: 		.word 7,3,25,4,75,2,1,1

.bss
max: 	.space 4

.text
start:
		mov r0, #0
		ldr r1,=max		@ Leo la dir. de max
		str r0,[r1]		@ Escribo 0 en max
		@ Terminar de codificar
