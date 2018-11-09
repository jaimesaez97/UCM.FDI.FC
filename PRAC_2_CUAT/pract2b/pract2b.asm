/*-----------------------------------------------------------------
**
**  Fichero:
**    pract2b.asm  10/6/2014
**
**    Fundamentos de Computadores
**    Dpto. de Arquitectura de Computadores y Automática
**    Facultad de Informática. Universidad Complutense de Madrid
**
**  Propósito:
**    Ordena de mayor a menor un vector de enteros positivos
**
**  Notas de diseño:
**
**---------------------------------------------------------------*/
@ Solucion Ejercicio B
.global start
.EQU 	N, 8
.data
	A: .word 7,3,25,4,75,2,1,1
.bss
	max: .space 4
	ind: .space 4
	B: .space 4*N
.text
start: 	mov r0, #0
		ldr r1,=max @ Dir max
		str r0,[r1] @ Escribo Max
		str r0,[r1,#+4] @Escribo Indice
		ldr r3,=A	@ Dirección base del array
		MOV r4,#0   @ Inicializamos j
					@ r5=A[i]
					@ r6=max
					@ r7=ind
		ldr r8,=B	@ Dirección base del array
 for1: 	 CMP r4,#N
		 BGE finfor1
		  str r0,[r1] @ Escribo 0 en max
		  MOV r2,#0   @ Inicializamos i
  for2:   CMP r2,#N
  		  BGE finfor2
		 	 LDR r5,[r3,r2,lsl#2]	/* leemos el elemento i-ésimo del vector A*/
		 	 LDR r6,[r1]
		if:  CMP r5,r6
	      	 BLE finif
	      		MOV r6,r5
	      		STR r6,[r1]
 		  		STR r2,[r1,#+4]
 	 finif:  ADD r2,r2,#1
			 B for2
 finfor2: ldr r7,[r1,#+4]
		  LDR r5,[r3,r7,lsl#2]
		  str r5,[r8,r4,lsl#2]
		  str r0,[r3,r7,lsl#2]
		  ADD r4,r4,#1
	     B for1
finfor1: B .
.end

@P2FC Ejercicio C: Reordenar el Array sobre si mismo
@Que implementen en ensamblador el siguiente algoritmo.
/* for (i=0;i<N;i++){
    for (j=i+1:j<N;j++){
     if (A[j]>A[i]) Intercambia A[j] con A[i] a través de registro;
     }
    }
*/
@POSIBLE SOLUCION
.global start
.EQU 	N, 4
.data
	A: .word 7,3,25,4
.bss
.text
start: 	mov r0, #0 	@ R0=0
		ldr r1,=A 	@ DirA=R1
		MOV r2,#0   @ Inicializamos i->R2
 for1: 	 CMP r2,#N
		 BLE finfor1
		  MOV r0,#1
		  ADD r3,r2,r0   @ Inicializamos j=i+1->R3
  for2:   CMP r3,#N
  		  BGE finfor2
		 	 LDR r4,[r1,r2,lsl#2]	@R4<-A[i]
		 	 LDR r5,[r1,r3,lsl#2]   @R5<-A[j]
		if:  CMP r5,r4
	      	 BLE finif
		 	 STR r5,[r1,r2,lsl#2]	@R5->A[i]
		 	 STR r4,[r1,r3,lsl#2]   @R4->A[j]
 	 finif:  ADD r3,r3,#1
			 B for2
 finfor2: ADD r2,r2,#1
	     B for1
finfor1: B .
.end



//Original
.EQU 	N, 8

.global start

.data
A: 		.word 7,3,25,4,75,2,1,1

.bss
B: 		.space N*4
max: 	.space 4
ind: 	.space 4

.text
start:
		@ Terminar de codificar
