Python Flow Control:Part 2
=============================================

97. Transfer statement : break statement

- To transfer control from one place to another place we need TS.
   1. break
   2. continue


1. break:

- When we should go for break statement in python.
    - we have loop, so inside loop if you want to break loop in some condition.

eg. 
for i in range(10):   # this for loop will run for 10 time
    if i == 7:        # If we want this to stop at 7 place 
      print("processing is enough, break loop exection")
      break
    print(i)
print("outside of loop")

o/p:

0
1
2
3
4
5
6
processing is enough, break loop exection
outside of loop


eg.

cart = [10,20,30,600,70,80]

for item in cart:
    if item > 500:
        print("To place this order, insurance must be required, we can't proceed further")
        break
    print("processing item", item)


o/p:

processing item 10
processing item 20
processing item 30
To place this order, insurance must be required, we can't proceed further

eg.

x = 10

if x > 40:
  print("We are stoping the program")
  break
print("Hello")

o/p:

  break
    ^^^^^
SyntaxError: 'break' outside loop

- Now tell me what output it will give us ? 
- If you will say o/p: Hello (then its wrong)
- Bcos here we are not running any loop. 
- Without loop break statement we can't use it.
- same apply to continue statement also. 

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
video 98: Transfer statement : continue statement
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

continue statement :-

- To skip current iteration and continue for next iterations.

eg. 

for i in range(10):  # 0 ot 9
   if i % 2 == 0:
      break
    print()

- So here use break statement then this loop will be come out as i = 0 and 2.
- Bcos 0%2==0 will be zero so condition is statisfed and it will come out of the loop.

eg.
for i in range(10):  # 0 ot 9
   if i % 2 == 0:
      continue
   print(i)

o/p:
1
3
5
7
9

- if you have any gf then if you do break up then there will be no further communication.
- if you have wife then you should be slient and next day you can continue.


eg.

- if any item insurance is required then don't process this item and go for next one.

cart = [10,20,700,30,600,70,80]

for item in cart:
    if item > 500:
        print("To place this order, insurance must be required, just skipping item", item)
        continue
    print("processing item:", item)



o/p:

processing item: 10
processing item: 20
To place this order, insurance must be required, just skipping item 700
processing item: 30
To place this order, insurance must be required, just skipping item 600
processing item: 70
processing item: 80


eg.

- if we use break statement then, it will be stop loop as item reach more then 500 price. 
- it will not proceed further.

cart = [10,20,700,30,600,70,80]

for item in cart:
    if item > 500:
        print("To place this order, insurance must be required, just skipping item", item)
        break
    print("processing item:", item)

o/p:

processing item: 10
processing item: 20
To place this order, insurance must be required, just skipping item 700


eg.

- I want to divide 100 with each number and display result. 
- If number is zero then how will divide 100 with 0 and will get "ZeroDivisionError".
- How will you do this code :
- So before processing just check ones if number is zero or not if there is zero then skip that number.



l = [10,20,0,5,0,30]
  
for x in l:
  print('100/{} = {}'.format(x, 100/x))

o/p:

 print('100/{} = {}'.format(x, 100/x))
                                  ~~~^~
ZeroDivisionError: division by zero

eg.
l = [10,20,0,5,0,30]
  
for x in l:
  if x == 0:
   print("We can't divide with zero")
   continue 
  print('100/{} = {}'.format(x, 100/x))


o/p:
100/10 = 10.0
100/20 = 5.0
We can't divide with zero
100/5 = 20.0
We can't divide with zero
100/30 = 3.3333333333333335


eg:

x = 10
if x > 40:
    print('Hello')
    continue
print('Hi')

o/p:
  continue
    ^^^^^^^^
SyntaxError: 'continue' not properly in loop

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Video 99: Transfer statement : Break and continue in nested loops


for i in range(3):
    for j in range(3):
        if i == j:
            break
        print( i, j)

explain:

i = 0
   j = 0  => break here
   j = 1
   j = 2

i = 1
   j = 0 (o/p : 1 0)
   j = 1 => break here 
   j = 2

i = 2
   j = 0 (o/p : 2 0)
   j = 1 (o/p : 2 1)
   j = 2 => break here


o/p:
1 0
2 0
2 1

Note: In python label break and label continue statement is not there, like java. 


eg.

for i in range(3):
    for j in range(3):
        if i == j:
            continue
        print( i, j)


explain:

i = 0
   j = 0  => continue statement will skip this combination
   j = 1 (o/p: 0 1)
   j = 2 (o/p: 0 2)

i = 1
   j = 0 (o/p : 1 0)
   j = 1  => continue statement will skip this combination 
   j = 2 (o/p: 1 2)

i = 2
   j = 0 (o/p : 2 0)
   j = 1 (o/p : 2 1)
   j = 2  => continue statement will skip this combination


o/p:
0 1
0 2
1 0
1 2
2 0
2 1


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

video 100: Loop with else block

- else you always seen with if statement
- but in python this else you can use in for, while, try(exception handling case)

eg. 
- in company - emp - serivce - 40 year - retairlement - if emp with no remark - company - farewall party
- in company - emp - service - 20 year - did some illgal work - service terminated - then no reterment.
- employee - without break -> party required
- employee - with break    -> party not required


- if exceueted without break if you want to do any activity then we need to  define that activtiy in else part. 
- when else will be execute when loop executed without any break statement then else part will be exceueted. 

eg. 


cart = [10,20,30,40,50]

for item in cart:
   if item > 500:
      print("We can't place this order, bcos insurance required")
      break
   print("processing item", item)

else:
   print("Congratulations,All item processed successfully")
   

o/p:

processing item 10
processing item 20
processing item 30
processing item 40
processing item 50
Congratulations,All item processed successfully


Note: 
- We can use else statement in loop when continue statement is there but there is not meaning bcos it already processing with item.
- So else is meaningfull only with break statement, not meaningfull with continue statement.
- So in continue part else will always exceueted bcos we are not using any break statement in loop. 

eg.


cart = [10,20,30,600,40,50]

for item in cart:
   if item > 500:
      print("We can't place this order, bcos insurance required", item)
      continue
   print("processing item", item)

else:
   print("Congratulations,All item processed successfully")


o/p:

processing item 10
processing item 20
processing item 30
We can't place this order, bcos insurance required 600
processing item 40
processing item 50
Congratulations,All item processed successfully



----------------

Q: What is the difference between for and while loops in Python?
- Repeat code for every item in sequence : for loop
- Repeat code as long as some condition it True : while loop

Q: how to exit from the loop?
- By using break statement

Q: How to skip some iteration inside loop?
- By using continue statement

Q: When else part will be execute in loops?
- If loop executed without break, then only else block will be exceueted.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
video 101: Pass statement
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* very imp for python and its 

eg.

- There are multiple team is there:
- THey were ask question if T1 don't know the answer
then they will 'Pass' the question. 

T1      T2       T3

- I have one function with name def f1()
- If you don't implementation of fucntion

if I am not taking any pass statement  

code:
def f1():

o/p:
SyntaxError : Unexpected EOF while parsing

- Whenever empty block is required so we need to use Pass statement.

code:

def f1():
   pass

- So we will going to use this block or function in future so as of now we don't want to use this.
- Why we are using pass statement. 

- Same way I want to write multiple class.
- So every class required body but as of now I don't know any body, so I will going to use pass statement.

code:
class A:
  pass

class B:
  pass 

class C:
  pass

o/p:
<blank>

- So pass statement act as a place holder for future implementation. 


- Now lets suppose for below code I don't what needs to write in else part or we not got conformation from client 
- that what need to mention in the else part so as of now we will else part empty with pass statement.
- and whenever client provide what details need to fill in else part we will enter that details. 

- so x value is greater then 10 then it will print "success" and if lesser then it will simply pass the code and give empty output.
code:
x = 100                       x = 9

if x>=35:                     if x>=35:
    print("success")             print("success")
else:                         else:
    pass                         pass

o/p:                          o/p:
success                       <blank>

- and now we got conformation from client that if x vlaue is lesser then 10 then give "Failure".

code:
x = int(input("Enter marks: "))

if x>=35:
    print("success")
else:
    print("Failure")

o/p:
Failure


- Now best use case: 
- In Abstract method who is responsible for provide information.
- Abstract method means the method without any body.
- How you can implementation empty body -> with help of pass statement.

- every loan have different intrest. 

Loan :
   Home Loan     : 9%
   Car  Loan     : 12%
   Personal Loan : 22%

code:


from abc import *     # this abc module is in abc libary will ocvert in opps.
class Loan(ABC):

# abstract method:- It is method/function without body. 

   def getInterRate(self):
      pass            # I don't know what is intrest rate. 

# Now who is resonsible for provide implementation is "child class"

class HomeLoan(Loan):   # Loan - Parent class and HomeLoan - child class
   def getInterRate(self):
      return 8

class VehicleLoan(Loan): # Loan - Parent class and VehicleLoan - child class
   def getInterRate(self):
      return 11


h = HomeLoan()
print(h.getInterRate())

v = VehicleLoan()
print(v.getInterRate())

o/p:
8
11


Q: what is purpose of "Pass statement"

- Use to define empty block / empty statement.
- It act as placeholder to implement future code.  
- Best choise for implementation of Abstract method.
- class without body is called "minimal class" or "least possible class"
class A:
   pass
- To define minimal function 
   def f1():
     pass
- So to define minimal class and minimal fucntion use this pass statement.


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

video 101 : del statement
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

- For memory point of view del will going to help. 
- So what is del means ? -> delete
- delete a variable. 

x = 10

So this x is a referance variable pointing to object 10.

- After using this variable X, 
- if this X veriable or object is no longer required. 
- so if we are not deleting this object so this object will be there in memory. 
- so unnessarry memory will going to weast. 
- I want to make this object for garbage collection.
- To improve free memory. 

x = 10
del x  # this will delete object x.

- So garbage collection will destory this objects and it improve free memory. 
- So chances of failing the program with memory problem will be very very less. 

- Now after deleting this veriable it is possbile to retrive this variable or not ? 
   - it will give name error. 



code: 
x = 10
del x

print(x)

o/p: name 'x' is not define. 

- If we delete the referance variable and mutiple variable pointing to same memory variable then
even if main refernace variable then it does't mean that object is eligiable for garbage collection.

code: 

s1 = 'Aashish'
s2 = s1
s3 = s2

del s1
print(s2)
print(s3)

o/p:

Aashish
Aashish


# Q: It is possible to delete multiple object at same time. 

code: 
del s2, s3 


2. Consultion 
 - Del vs immutable objects:

Q: what is immutable objects ?
- Ones we created object we can't do any changes in that object. 
- this none changeable behaviar is nothing but is immutable. 

eg. 

string object are immutable.
tuple object are immutable. 

- you can delete the referance variable which is pointing to immutable object because of " del a" operation. 

eg. 
s = 'aashish'
del s


- Now I want to delete this "a" in aashish. 
- So how you can access element or charter of string by using index 

s = 'neha'
del s[0]

- But this is string and its immutable in nature 
- so you can't change its contain, 
- you can't remove something.
- you can't add something.

- So 'del' keywords can't use to remove element present immutable objects.

code:
s = 'Aashish'
del s

o/p:
<blank>  # it will delete the object s.

code:
s = 'Aashish'
del s[0]

o/p:
del s[0]
        ~^^^
TypeError: 'str' object doesn't support item deletion


3. Del vs None 

x = 10 

Here, X is pointing to 10 and if we use

del x           or              x = None

so, what is the difference between this 2.

del x 
- It will delete the x object
- This is eligiable for garbage collection.
- After deleting this X veriable you can't use this X variable.
- By mistake if you trying to use X veriable after 'del' variable it will give NameError.

x = None
- x is pointing to None object.
- None is also a object in python, which represent no value.
- we are just reassining the variable. 
- Now that 10 object is eligiable for garbage collection.
- So in both cases object is deleting but in case of None variable is alive. 
- we can again we use X. 

code:
x = 'Aashish'
x = None
print(x)

o/p:
None

code :
x = 'Aashish'
del x
print(x)

o/p:
NameError

Del Advantages :
- Del is a keyword in python. 
- Del can be use to delete variable variables.
- If you delete variable then corresponding object is eligiable for garbage collection.
- Automatically free memory will be improve.
- Chance of failing python program with memory program is very very less.
- Python application will become robust.


1. del vs multiple variables
  - We can use del to delete multiple variables. 
  - If we delete all referance variable then only object eligiable for garbage collection.
2. del vs immutable object
  - we can delete a variable, which is pointing immutable object.
  - But we can't delete element present inside immutable objects.
3. del vs None
   - After del we cannot use that variable but after assigning with None value, we can access that variable. 

   
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Video 103: Prime Number(PN) 
 

Q: What is a PN ?
- A number which has only 2 factors.
- A positive integer greater than 1 which has no other factors except 1 and the number itself is called a prime number.
- 2, 3, 5, 7 etc. are prime numbers as they don't have any other factors.
- But 6 is not prime it is Composite since 1*6=6, 2*3=6, 3*2=6. 


- If more then 2 factors available then such type of number is called
"Composite Number".

10 => 1*10
      2*5
      5*2
      10*1
      ----
      4 -> factors so it is not a Prime Number. 

24 => 1 * 24 
      2 * 12  
      3 * 8
      4 * 6
      8 * 3
      12 * 2
      24 * 1
      ------
      7 -> It is not prime number it is a "Composite Number"


5 => 1 * 5       17 => 1 * 17
     5 * 1             17 * 1
----------------------------------
- It is a Prime Number.  

PN : 2, 3, 5, 7, 11, 13, 17, 19, 23...

-------------------------------------------------
WAP: To check whether the given number is prime number or not?

WAP: to generate prime number which are less then or equal the even number?

WAP: TO generate 1st n prime numbers?
--------------------------------------------------

WAP: To check whether the given number is prime number or not?
- If it is PN then it must be greater then one. 
- It is 2 factors

code:

n = int(input("Enter any number: "))

if n<=1:
   print("It is not Prime Number")
else: 
   is_prime = True
# from 2 to 9 is there any factor available.
# 2 to n-1 any factor available then it is not PN. 
   for i in range(2, n):   # 2 to n-1 which 2 to 9 ( |1|2,3,4,5,6,7,8,9|10| )
      if n % i == 0:
         is_prime = False
         break

# this above for loop is finish and we not found any number is divisiable between 2 to n-1.

   if is_prime == True:
      print("It is prime number")
   else:
      print("It is not Prime Number")


explain:- 
- If given number is 5, then we need to check with 2,3,4
n % i == 0  => 5%2, 5%3 and 5%4 all 3 are not return 0 so its prime number. 


Note: 
- If it is big number then it will try to check all posible division will that big number
- which is nothing but causing high CPU and consuming more memory power.
- So if n is the number then n//2+1 also can be checked.
   eg. 23 // 2 = 11+1 = 12
   For 23 number we can divied up to 12 then also we will get the idea that give number is PN or not.
- So on line 747 above for loop we can write like this also. 
- With this we are reducing the number of iteration.

# 2 to n-1 any factor available then it is not PN. 
  for i in range(2, n//2+1):  
     if n % i == 0:
      is_prime = False
      break

   


WAP: to generate prime number which are less then or equal the even number?

10 is there
can you generate number which are less then or equal to 10.
>> 2,3,5,7
logic : 2 to 10 => 2, 3, 4, 5, 6, 7, 8, 9, 10
                   P  P     P     P

code:
n = int(input("Enter n value: "))
n1=2
while n1<=n:
    is_prime = True
    for i in range(2, n1//2+1):
        if n1%i==0:
            is_prime=False
            break
    if is_prime==True:
        print(n1, end = " ")
    n1 = n1+1

o/p:
Enter n value: 10
2 3 5 7
---------------------------------


WAP: To generate 1st n prime numbers?


code:
n = int(input("Enter n value: "))
count = 0
n1=2
while True:
    is_prime = True
    for i in range(2, n1//2+1):
        if n1%i==0:
            is_prime=False
            break
    if is_prime==True:
        print(n1, end = " ")
        count = count+1
    if count==n:
        break
    n1 = n1+1
    
o/p:


Enter n value: 20
2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71


      





