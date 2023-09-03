Session 6 : https://capgemini.udemy.com/course/learn-complete-python-tutorial-in-simple-way/learn/lecture/14548202#overview


Video 80 - Flow - Control

- Control flow:- In which order statement will be exectued at run time is decided by flow-control.


Flow control:-
	- Selection Statement
		:if
		:if-else
		:if-elif-else
		:if-elif
	- Iterative Statement
		:for
  		:while
	- Transfer Statement
		:break
		:continue
	

- there is no "switch" statement is there...
- there is no "do-while" statement is there...
- there is no "goto" statement is there....


- You need to understand "Indentation Error"

code:
if condition:
    statement-1
    statement-2
    statement-3

statement4

code:
if 10<20:
   print('10 is less then 20')
print('end of program')

o/p:
10 is less then 20
end of program


Error Code:

if 10<20:
print('10 is less then 20')
print('end of program')

o/p:

  File "c:\test.py", line 2
    print('10 is less then 20')
    ^
IndentationError: expected an indented block after 'if' statement on line 1

----------------------------------------------

video 81 : if - elif - else statement 

if:-

name = input("Enter name: ")
if name == 'Neha':
    print(f"Hello {name}")
print("How are you")

O/P: if name = Neha:-

Enter name: Neha
Hello Neha
How are you

O/P: if name = Jain (other then neha)
Enter name: Jain
How are you

---------------------------------------------------------


if-else:-

name = input("Enter name: ")
if name == 'Neha':
    print(f"Hello {name}")
else:
    print("Hello Guest how are you")
print("How are you")

O/P:- if name is Neha:-
>> Enter name: Neha
>> Hello Neha
>> How are you

O/P:- if name is sunny(other then Neha)
>> Enter name: Sunny
>> Hello Guest how are you
>> How are you

---------------------------------------------------------

if - elif - else:-

if condition1:
        Action-1

elif condition2:
       	Action-2

elif condition3:
	Action-3
      .
      .
      .
      .
      .
else:
	Default Action



code:
brand = input("enter your brand:")
if brand == 'oppo':
    print("this is china brand")
elif brand == 'vivo':
    print("this is too commnan")
elif brand == 'samsung':
    print("its S series is best")
else:
    print("Go for iphone")

* in this code "else" part is always optional 

-------------------------------------------------

video 82: find small n biggest number

Q1. WAP to find biggest of 2 given number? 

a = int(input('Enter 1st number: '))
b = int(input('Enter 2nd number: '))

if a > b:
    print("A is bigger")
else:
    print("B is biggest")

o/p:
Enter 1st number: 67
Enter 2nd number: 45
A is bigger

o/p:
Enter 1st number: 45
Enter 2nd number: 67
B is biggest

* same way you can change to smallest also by changing > (greater then) to < (small)


Q2. WAP to find biggest of 3 given number? 

a = int(input('Enter 1st number: '))
b = int(input('Enter 2nd number: '))
C = int(input('Enter 3rd number: '))


if a > b and a > c:
	print("A is bigger number")
if b > c:
	print("B is bigger number")
else:
	print("C is bigger number")

o/p:
>> Enter 1st number: 23
>> Enter 2nd number: 67
>> Enter 3rd number: 45
>> B is bigger number



Q3: WAP to check wherer the given number is in between 1 to 100.


n = int(input("Enter number"))

if n > 0 and n < 100:
	print("Given number is between 1 to 100")
else:
	print("Number not in range")


===========================================================================================

Video 83: WAP to take a single digit number from the keyboard and print its value in English words?

Method 1:-

n = int(input("Enter a digit from 0 to 9: "))
if n==0:
   print("Zero")
elif n==1:
   print("One")
elif n==2:
   print("Two")
elif n==3:
   print("Three")
elif n==4:
   print("Four")
elif n==5:
   print("Five")
elif n==6:
   print("Six")
elif n==7:
   print("Seven")
elif n==8:
   print("Eight")
elif n==9:
   print("Nine")
else:
   print("Enter number between 0 to 9")

---------------------------------------------
Method 2:-

n = int(input("Enter a digit from 0 to 9: "))
list = ["Zero", "One","Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]

print(list[n])


----------------------------------------------------------------------------------------------------------------
video 83:

Q: WAP to get digit in english:

words_upto_19=['','ONE','TWO','THREE','FOUR','FIVE','SIX',
'SEVEN','EIGHT','NINE','TEN','ELEVEN','TWELVE','THIRTEEN','FOURTEEN','FIFTEEN','SIXTEEN','SEVENTEEN','EIGHTEEN','NINETEEN']

words_for_tens=['','','TWENTY','THIRTY','FOURTY','FIFTY','SIXTY','SEVENTY','EIGHTY','NINETY']

n=int(input('Enter a number from 0 to 99:'))
output=''
if n==0:
	output='ZERO'
elif n<=19:
	output=words_upto_19[n]
elif n<=99:
	output=words_for_tens[n//10]+"-"+words_upto_19[n%10]
else:
	output='Please enter a value from 0 to 99 only'
print(output)

----------------------------------------------------------------------------------------------------------------

Video 84: Iterative Statement : For loop

- Use for-loop with String.
- When you want to repeate any statement multiple time.

1.   for loop
2. while loop


- there is no "do-while" loop in python.


1. For Loop:-

- it is same as for-each loop from java.
- suppose I have some collection is there:
	list
	set
	tuple
	string
	range

- For every element present in collection or sequance if you want to perfrom certain activity then we need to go for "For Loop".

- syntax:-

>> for x in sequence:	# from above given DT
>>     	Activtiy	# multiple time we can do


eg. 

n = 'Jain Neha'
// I want to present every element in this string.

for x in n:
    print(x)

o/p:
J
a
i
n

N
e
h
a

- Now i want to print correstpoing index also...

code:

n = 'Jain Neha'
i = 0
for x in n:
    print("The charter present at {} is Index {}".format(i,x))
    i = i+1



o/p:
The charter present at 0 is Index J
The charter present at 1 is Index a
The charter present at 2 is Index i
The charter present at 3 is Index n
The charter present at 4 is Index
The charter present at 5 is Index N
The charter present at 6 is Index e
The charter present at 7 is Index h
The charter present at 8 is Index a

========================================================================================================

Video 85: Application by using for loop

- used "for-loop" with range().
- Suppose we print below statement for 10 times

"Hello Welcome to Python for Loop"

- So what logic we will going to follow:
	- if you want to represent 10 value
	- you should go for range() function


- Types of Range function:-
	1. range(n)  => 0 to n-1
	2. range(m, n) => from m to n-1
	3. range(m, n, increent/decerement)


code1:-

for x in range(10):
    print(""Hello Welcome to Python for Loop")


* print odd number
code:

for x in range(22):
    if x%2 != 0:
     print("Odd number is", x)
or

for y in range(1,21,2):
   print(y)

* print number in descanding order 

for x in range(10, 0, -1):         # for in range from 10 to 0, everytime reduce number by 1
    print(x)


* print sum of number by user input using list:

code:- 

list = eval(input("Enter number: "))
sum = 0

for x in list:
    sum = sum+x

print(sum)

or

code:- 

list = eval(input("Enter number: "))
print(sum(list))

o/p:
Enter number: [10,20,30]
60

------------------------------------------------------------------------------------------------

video 86: While loop and Application

- In last video you learn about "For-Loop"
- For-Loop(FL) is always based upon sequence 
- if you want to use FL then there must be a sequence. 
- It may be "String/List/Range" anything.

* While Loop:
	- But I want to execute a group of statement repeatedly based on some condition.
	
sentax:

while condition:
	   body

	- Such as long as this condition is true, can you please execute?
	- As long as this condition is true then this body will be executed.
	- When this loop will stop ? 
	-> when this condition is false. 

- FL -> Run based on sequence 
- WL -> Run based on condition

eg. 
can you pls print "Hello" for 10 time:

i = 1
while i<=10:
	print("Hello, Welcome to While loop")
	i = i+1

eg2:
can you pls print number 1 to 10:

i = 1
while i<=10:
	print(i)
	i = i+1


eg3:
print number from 1 to 20 which are divisiable by 3

x = 1
while x <= 20:
    if x % 3 == 0:
        print(x)
    x = x + 1

eg4:
# WAP to print sum of value input from user.
# like 1+2+3...n and so on...

n = int(input("Enter the number:- "))
Sum = 0
i = 1

while i <= n:
    Sum = Sum + i
    i = i + 1
print("The sum", Sum)


eg. 
WAP 

name = ''

while name != 'neha':
    name = input("Enter name: ")

print("Thanks for conformation")

o/p:
Enter name: dimpi
Enter name: priyanka
Enter name: preety
Enter name: rekha
Enter name: neha
Thanks for conformation

- So are you getting as long as condition is true it going to excute the body. 
- If this condition is failed then only code will going to stop.
- this is nothing but While-Loop.

=========================================================================================================

video 87: Infinte loops and Nested loops


eg. 
i = 1
while True:
   print("Hello: ", i)
   i = i+1



when True:

    body

    if our required condition satisfied
    then use:
	break


- if we don't know number itration then run while loop.



*** Nested Loop

- Loop inside another loop.

eg.

for i in range(3):      # range(n) is n-1, #0,1,2
	for j in range(2):  #0,1
		print("Hello")

explanation:-

i = 0
	j = 0 => Hello
	j = 1 => Hello
i = 1
	j = 0 => Hello
	j = 1 => Hello
i = 2
	j = 0 => Hello
	j = 1 => Hello

So Hello will print 6th time. 


eg.

for i in range(3):
    for j in range(2):
        print('i = {} and j = {}'.format(i, j))

o/p:
i = 0 and j = 0
i = 0 and j = 1

i = 1 and j = 0
i = 1 and j = 1

i = 2 and j = 0
i = 2 and j = 1

- Hope you understand the Nested loop.