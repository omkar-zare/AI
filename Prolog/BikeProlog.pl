bike(yamaha).
bike(bajaj).
bike(hero).
bike(ktm).
bike(bmw).
likes(john,yamaha).
likes(mary,bajaj).
likes(sam,hero).
likes(john,ktm).
catagory(ktm,sports).
catagory(hero,standard).
catagory(bajaj,touring).
catagory(yamaha,sports).
price(50000,hero).
price(80000,bajaj).
price(100000,yamaha).
price(150000,ktm).
price(200000,bmw).
location(pune,ktm).
location(mumbai,yamaha).
location(dubai,hero).
location(delhi,bajaj).
find_max(X,Y,Z,P,X):- price(A,X), price(B,Y),price(C,Z), price(D,P), A>=B, A>=C, A>=D.
find_max(X,Y,Z,P,Y):- price(A,X), price(B,Y),price(C,Z), price(D,P), B>=A, B>=C, B>=D.
find_max(X,Y,Z,P,Z):- price(A,X), price(B,Y),price(C,Z), price(D,P), C>=A, C>=B, C>=D.
find_max(X,Y,Z,P,P):- price(A,X), price(B,Y),price(C,Z), price(D,P), D>=A, D>=B, D>=C.
find_min(X,Y,Z,P,X):- price(A,X), price(B,Y),price(C,Z), price(D,P), A<B, A<C, A<D.
find_min(X,Y,Z,P,Y):- price(A,X), price(B,Y),price(C,Z), price(D,P), B<A, B<C, B<D.
find_min(X,Y,Z,P,Z):- price(A,X), price(B,Y),price(C,Z), price(D,P), C<A, C<B, C<D.
find_min(X,Y,Z,P,P):- price(A,X), price(B,Y),price(C,Z), price(D,P), D<A, D<B, D<C.
add(X,Y):-
    price(A,X),
    price(B,Y),
    C is A+B,
    write('Addition:'),write(C),nl.
find_location(X):-
    location(A,X),
    write('Location:'),write(A),nl.


addition:-
   write('Write a number 1: '),
   read(Number),
   write('Write a number 2: '),
   read(Num),
   C is Number+Num,
   write('Addition of '),write(Number),write(','),write(Num),write(': '),write(C),nl,addition.