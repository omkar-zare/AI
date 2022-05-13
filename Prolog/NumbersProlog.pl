WAP for accepting 2 numbers from user apply addition substration,multi,divison,mod and find min and max amoung them?
code:

	numbers:-
	    write('Enter 1st Number:'),
	    read(Num1),
	    write('Enter 2nd Number:'),
	    read(Num2),
	    Min is min(Num1,Num2),
	    Max is max(Num1,Num2),
	    A is Num1+Num2,
	    S is Num2-Num1,
	    M is Num1*Num2,
	    D is Num2/Num1,
	    MO is Num1 mod Num2,
	    write('Minimum of ('),write(Num1),write(','),write(Num2),write('): '),write(Min),nl,
	    write('Maximum of ('),write(Num1),write(','),write(Num2),write('): '),write(Max),nl,
	    write('Addition of ('),write(Num1),write(','),write(Num2),write('): '),write(A),nl,
	    write('Substraction of ('),write(Num2),write(','),write(Num1),write('): '),write(S),nl,
	    write('Multiplication of ('),write(Num1),write(','),write(Num2),write('): '),write(M),nl,
	    write('Division of ('),write(Num2),write(','),write(Num1),write('): '),write(D),nl,
	    write('Mod of ('),write(Num1),write(','),write(Num2),write('): '),write(MO),nl.

to run:
	-?numbers.