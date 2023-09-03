Session 7 - Python Pattern Pragram 
https://capgemini.udemy.com/course/learn-complete-python-tutorial-in-simple-way/learn/lecture/14548202#overview


Video 88:- To print given number of *s in a row


i/p: 3
o/p: * * *
i/p: 5
o/p: * * * * *

eg1:

n = int(input("Enter the number: "))

for x in range(n):
    print("*", end=" ")

o/p:
Enter the number: 10
* * * * * * * * * *

video 89: print * in squre pattern 


eg:
n = int(input("Enter the number: "))

for x in range(n):
    print("* " * n)

i/p:3             i/p: 5
o/p:		  o/p:
* * * 		* * * * *
* * * 		* * * * *
* * * 		* * * * *
		* * * * *
		* * * * *




video 90:- print squar pattrn within fixed digit in every row

eg.
n = int(input("Enter the number: "))

for x in range(n):
    print((str(x+1) + " ") * n)

i/p: 3
o/p: 
Enter the number: 3
1 1 1
2 2 2
3 3 3

-----------------------------------------------------------
video 91:- print squar pattern with alpabet symbols
note:- chr(65) -> A
       chr(65) -> B
       chr(65) -> C


eg:
n = int(input("Enter the number: "))

for x in range(n):
    print((chr(65+x) + " ") * n)


o/p:
Enter the number: 5
A A A A A
B B B B B
C C C C C
D D D D D
E E E E E

----------------------------------------------------
video 92:- print right angle tringle with *

eg:-
n = int(input("Enter the  number of row: "))

for i in range(n):
    for j in range(i+1):
        print('*', end=' ')
    print()

o/p:
n = 3		n = 5
*			*
* *			* *
* * *		* * *
			* * * *
			* * * * *
			* * * * * *

-------------------------------------------------
video 93:- print inverted right angle tringle with *

eg:
n = int(input("Enter the  number of row: "))

for i in range(n):          #if n =3, 0,1,2
    print('* ' * (n-i))
  
o/p:
Enter the  number of row: 5
       n = 5
i=0	* * * * *
i=1	* * * *
i=2	* * *
i=3	* *
i=4	*
       (n-i)

--------------------------------------------
video 94:- print Pyramid with *

# how many number of row we need ? => n number
n = 4 then 0, 1, 2, 3 row 

# No of space in every row :- (n-i-1)
i = 0 and n = 4 then (4-0-1 = 3), (4-1-1=2)

# how many time * to be print : i+1
if symbol is not changing then we no need to go in nested loop.


eg:
n = int(input("Enter the  number of row: "))

for i in range(n):          #if n =3, 0,1,2
    print(' ' * (n-i-1) + '* ' * (i+1))
  

o/p:
Enter the  number of row: 5
    *
   * *
  * * *
 * * * *
* * * * *

------------------------------------------------------

video 95:- print Inverted Pyramid with *

# number of spaces = value of i 
i=1 > 1 space, i=2 > 2 space

# how many time * need to be print : n-i

eg.
n = int(input("Enter the  number of row: "))

for i in range(n):          #if n =3, 0,1,2
    print(' '*i + '*  '*(n-i))
  

o/p:
Enter the  number of row: 5
*  *  *  *  *
 *  *  *  *
  *  *  *
   *  *
    *

-----------------------------------------------------

video 96:- To print diamond pattern with * symbols

eg.
n = int(input("Enter the  number of row: "))

for i in range(n):          #if n =3, 0,1,2
    print(' ' * (n-i-1) + '*  ' * (i+1))
for i in range(n-1):          #if n =3, 0,1,2
    print(' '*(i+1)+ '*  '*(n-i-1))
  

o/p:
Enter the  number of row: 5
    *
   *  *
  *  *  *
 *  *  *  *
*  *  *  *  *
 *  *  *  *
  *  *  *
   *  *
    *
