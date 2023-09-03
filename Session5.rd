Video 68:-

Session 3:- Input and Output Statements:-

input() funtion:-
	1. raw-input() vs input()
	2. python2 input() function
	3. how to read multiple values from the 	   keyboard in a single line
	4. command line arguments

Output() function:-
	5. Output statment: print() function
	6. set attribute
	7. end attibute
	8. printing formatted string
	9. Replacement operator:{}
==============================================

1. raw-input() vs input() :-

raw_input() :-
	- can be used as end-user provided data.
	- It will always return vlaue in "String" format only.
	- Even if you enter number but type will be "Sting" only.
	- So we need to do "TypeCasting".
	- Return type will be "str" only

x = raw_input("enter some value")
y = int(x)
print(type(x)) => type(str)
	
	

Input() function/IF:-
	- It will read date provided by end-user and gives the value based on data.
	- if user provied "neha" => str
	-                   32   => int
	-		   10.5  => float 
	and so on...

	- We don't required to do any kind of "TypeCasting".
	- Return type will be based on user input. 


*** Both IF and Raw IF are used in Python 2.x version.
*** In "python3.x" we have only input function not RAW IF but its same as RAW IF of 2.x version. 
    Only function name got changed from "RAW Input Function" to "Input Function".
	- Return type will be "str" only

----------------------------------------------------------------------------------------------
video 69:- How to add sum of 2 number from Input function


eg.
a = int(input("Enter the value: "))
b = int(input("Enter the value: "))
print(f"sum of a + b is: {a+b}")


----------------------------------------------------------------------------------------------------------
video 70:-

- same way we need to convert all DT from str to its respective DT. 
- But we need to take special care of "Bool" DT. 

eg.

print(bool(input("Are you Married? [True/False]")))  
if "input" => True then Output => "True"
but, input => "Flase" then also, Output => "True" 

this is happening because, 
		if we put any input in bool then -> output is always "True"
	bool(str[True/Flase]) => True
		if we pass an "Empty string" (don't insert any input) then -> output will be "False"
	bool( ) => Flase

So to over come from this issue we need to use "eval" function:-

===========================================================
|| print(bool(input("Are you Married? [True/False]")))   ||
|| print(eval(input("Are you Married? [True/False]")))   ||
===========================================================
|| Are you Married? [True/False]False			 ||
|| True							 ||
|| Are you Married? [True/False]False			 ||
|| False						 ||
===========================================================

----------------------------------------------------------------------------------------------------------

video 71:- Reading Multiple vlaues from the keyboard in a single line

This is called list complihancing:- 
>> a, b = [int(x) for x in input("Enter 2 number: ").split()]
>> print("The sum", a+b)
Output:-
>> Enter 2 number: 10 20
>> The sum 30

Explanation:-
	
			input("Enter 2 number: ")   	     >> '10  20'    # taken input as string
			input("Enter 2 number: ").split()    >> '10' '20'   # split 2 value as 2 diff string        
       [int(x) for x in input("Enter 2 number: ").split()]   >>  [10, 20]   # for every x in "input fun" converted into list and can you type cast to int
a, b = [int(x) for x in input("Enter 2 number: ").split()]   >>  30	    # This list of can you assign to a and b

- 1st reading string
- split string into multiple values
- every string present in list, typecase into INT DT



IP>> print(input("Enter 2 number: "))
OP>> Enter 2 number: 10 20
OP>> 10 20

IP>> print(input("Enter 2 number: ").split())
OP>> Enter 2 number: 10 20
OP>> ['10', '20']

IP>> print([int(x) for x in input("Enter 2 number: ").split()])
OP>> Enter 2 number: 10 20
OP>> [10, 20]

*** list unpacking :- whatever value in above list will be add in this list.

IP>> a, b = [int(x) for x in input("Enter 2 number: ").split()]
IP>> print(f"value of a is {a}")
IP>> print(f"value of a is {b}")
IP>> print("The sum", a+b)

OP>> Enter 2 number: 10 20
OP>> value of a is 10
OP>> value of a is 20
OP>> The sum 30


IP>> a, b = [int(x) for x in input("Enter 2 number: ").split()]
OP>> Enter 2 number: 10 20
OP>> The sum 30

This asking value with space like 10 20 but if we want to seperate via coma then we need to add split(,').

IP>> a, b = [int(x) for x in input("Enter 2 number: ").split(',')]
OP>> Enter 2 number: 10,20
OP>> The sum 30

Q:- Write a code to read 3 float value from the keyboard with , seperation and print the sum.

IP>> a,b,c = [float(x) for x in input("Enter 3 float value with , seperation:- ").split(',')]
IP>> print("sum of a,b,c:- ", a+b+c)
OP>> Enter 3 float value with , seperation:- 1.5, 1.5, 1.5
OP>> sum of a,b,c:-  4.5

----------------------------------------------------------------------------------------

video 72:- eval() function:-

- Alternetive to TypeCasting we use eval() function.
- instaed of using int, float, bool DT value for TypeCasting in input function we can use eval DT which will acutomatically convert into its corresponding DT.

eg.
a = input("enter some value")  >> by default it will always return "string" DT
so instated of using, 
a = int(input("enter some value"))   or 
a = float(input("enter some value")) or
a = bool(input("enter some value"))

we can use eval DT
a = eval(input("enter some value"))

It will convert input as per type it belongs to... 
IP>> d = eval(input("enter:- "))
IP>> print(type(d))
OP>> enter:- 10+5j
OP>> <class 'complex'>

also it you put "expression" it will evaluate and provide the output. 

IP>> d = eval("10010*20+30+340-900")
IP>> print(d)
OP>> 199670

-----------------------------------------------------------------------------------------------------------------------------
video :- 73  :- command line argument :-

- suppose if we want to pass agrument while running the test.py file, like 
>>test.py 10,20,30
- how will you achive this ?
	- by using command line arguments.

- for this we need to import sys (module) and argv (function/variable) like
>> from sys import argv 


from sys import argv
print(type(argv))
print(argv)

c:/test.py
<class 'list'>    # when we enter value in CLA it will be in form of list DT and bydefault value will be string.  

['c:/test.py', '10', '20', '30']  #1st index will be test.py, if you want to sum of your element pass in CLA then always start from index [1:] onwards

- Now big question is where I am going to use this command line argument:-

- suppose we have 2 file file1.txt and file2.txt and we want to get output in output.txt, then we write below code:-

> f1 = open("file1.txt")
> f2 = open("file2.txt")
> f3 = open("output", w)
> 
> for x in f1:
>   f3.write(x)
> for x in f2:
>   f3.write(x)

run>> c://text.py file1.txt file2.txt file3.txt

- this code will take input from file1.txt and file2.txt -> send to output to -> output.txt

- So in this case we need to hardcord the file name as per code. 
- But if client have they own filename then this code will not work and everytime they need to change filename.

> f1 = open(argv[1])
> f2 = open(argv[2])
> f3 = open(argv[3], w)
> 
> for x in f1:
>   f3.write(x)
> for x in f2:
>   f3.write(x)

run>> c://text.py a.txt b.txt z.txt    # here file name can be anything...

-------------------------------------------------------------------------------
video 75:- CLA conclusion

Case1:- 

code1:-
from sys import argu
print(argv[1])		#it will give output with >> Neha
------
py test.py Neha Jain
#    [0]   [1]  [2]
>> Neha

- But I want to print full name "Neha Jain"
- here space is the seperator in CLA

Code2:-
from sys import argu
print(argv[1])		#it will give output with >> ' Neha
------
py test.py 'Neha Jain'
#    [0]    [1]  [2]
>> 'Neha

Code3:- 
from sys import argu
print(argv[1])		#it will give output with >> Neha Jain
------
py test.py "Neha Jain"
#    [0]      [1]  
>> Neha Jain

+++++++++++++++++++++++++++++++++
Case2:- Arthmetic operation:-

- Bydefault it will CLA as string DT. 
from sys import argu
print(argv[1]+argv[2]) 
------
py test.py 10 20
>> 1020

- In order to sum we need to convert/TypeCasing into Int DT...
from sys import argu
print(int(argv[1])+int(argv[2])) 
------
py test.py 10 20
>> 30


+++++++++++++++++++++++++++++++
Case3-

- Out of RangeIndex 

code:-
from sys import argu
print(argv[100]) 
------
py test.py 10 20
>> IndexError:- List index out of range 

-----------------------------------------------------------------------------

Video 76 :- Output Statement 

- Normally we have print() statement to give any output.

Case1:-
- print() stament without any argument 
	- it will insert new line (\n) 
eg.
- it will not give any new line in between 2 line
print("Neha")
print("Jain")
>>Neha
  Jain

- it will insert a new line between Neha n Jain by print()
print("Neha")
print()
print("Jain")
>>Neha

  Jain


-----------------------------------------------------------------------
Output statement :- 

a,b,c = 10,20,30
print(a,b,c)   
10 20 30

Sep attibute :

a,b,c = 10,20,30
print(a,b,c, sep=":")
10:20:30

one print statement and multiple arugment and in between that seperator. 

code:
>> a,b,c = 10,20,30
>> print(a,b,c)
>> print(a,b,c, sep="-")
>> print(a,b,c, sep="--")
>> print(a,b,c, sep=":")
>> print(a,b,c, sep="::")

output:
c:/test.py
>> 10 20 30
>> 10-20-30
>> 10--20--30
>> 10:20:30
>> 10::20::30


video 77: End attribute

Code:
print("Neha")
print("Aashish")
print("Jain")

O/P:
Neha
Aashish
Jain

- Now I want all 3 O/P in single line:-

code:
print("Neha", end=' ')
print("Aashish", end=' ')
print("Jain")

o/p:
Neha Aashish Jain

---------

* Now both "Sep" and "End" arrtibute together 

Code:-
print(10, 20, 30, sep=':', end='***')
print(40, 50, 60, sep=':')
print(70, 80, sep='**', end='$$')
print(90,100)

O/P:-
10:20:30***40:50:60
70**80$$90 100


code:-

print('neha' + 'jain')  >> nehajain
print('neha','jain')    >> neha jain

--------------------------------
video 78: print(object) replacement 

- In print(object) you can pass not only string DT but you can pass any object

l = [10, 20, 30, 40]
print(l)  >> [10, 20, 30, 40]  # list DT

t = (10, 20, 30)
print(t) >> (10, 20, 30)   # Tuple DT


* print statement with replacment operator{}

- just replace culdly bracket open n close {}

name = 'neha'
salary = '10000'
bf = 'aashish'

requirmeent :- hello <neha>, your salary is <10000> and your friend <aashish> is waiting.

code 1:- 
   print('hello {}, your salary is  {} and your friend {} is watiing'.format(name, salary, bf))  
   print('hello {2}, your salary is  {0} and your friend {1} is watiing'.format(salary,  bf, name))   #also with Index
   print('hello {n}, your salary is  {s} and your friend {b} is watiing'.format(s=salary,  b=bf, n=name))   #Keyword argument
   print(f'hello {name}, your salary is  {salary} and your friend {bf} is watiing')    


O/P>> hello neha, your salary is  10000 and your friend aashish is watiing

code 2:-
a, b, c, d = 10, 20, 30, 40
requiremement is :-
a=10, b=20, c=30, d=40 

print('a={}, b={}, c={}, d={}'.format(10, 20, 30, 40))

--------------------------------------------------------------------

video 79:- print() with formatted string
-


%i	-> signed decimal value 
%d	-> signed decimal value
%f	-> float value
$s	-> string, 

a = 10
print('a value: %i' %a)
O/P : a value 10

print("formatted string"  %(variable list))


- Formated string is more powerfull then string replacement operator. 

code:
name = 'neha'
marks = [10,20,30,40]

print('my name is %s, my  marks is %s' %(name, marks))


O/P:
my name is neha, my  marks is [10, 20, 30, 40]

- Differance between  Formated string and string replacement operator. 


code:-

price = 70.56789

print("Price value = {}".format(price))
print("Price vlaue %f" %price)

O/P :- Will be same for both
Price value = 70.56789


Requirement :- I want only 2 digit after decimal point. 

- I can achive this with formated string but I can't do with replacment operator.  

print("Price vlaue %.2f" %price)
>> Price vlaue 70.57


