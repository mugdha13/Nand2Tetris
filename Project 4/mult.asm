// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@sum
M=0
@R1
D=M
@count
M=D

(LOOP)

@count
D=M
@END
D;JEQ //Jumps if count=0
@R0
D=M
@sum
M=M+D
@count
M=M-1
@LOOP
0;JMP

(END)

@sum
D=M
@R2
M=D

@23
0;JMP
