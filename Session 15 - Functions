Video 207 :-  Need for Function and Advantages 

Example:- 

a = 20
b = 10
print('The sum', a+b)
print('The diff', a-b)
print('The product', a*b)
# after sometime my requirement is below:
a = 200
b = 100
print('The sum', a+b)
print('The diff', a-b)
print('The product', a*b)
# after sometime my requirement change to below:
a = 2000
b = 1000
print('The sum', a+b)
print('The diff', a-b)
print('The product', a*b)

* There is 3 diff code is there which having 3 diff value for a and b.
    - In our program if group of statment is repeated required, so never recommended to write a statement seperatly. 

* Problem:
    - Leangth of a code is increase.
    - Code re-useablity will be down.

* How will you solve this type of problems:
    - We have to define, such type of repeatedly required code as a single unit and just a call that unit whereever that code is required.

New Code Example:

def calculate(a,b):
    print('The sum', a+b)
    print('The diff', a-b)
    print('The product', a*b)

# Here, I am writing this 3 line of code only one time so whenever this code is required call this
# function called calculate there, automatically this code will come. 

calculate(20,10)
calculate(200,100)
calculate(2000,1000)

* So how many times we are writing this code? Is only 1 time.
    - how many times we are calling that code multiple times.
    - so repeatedly required code write only once and call that code as many number of times.

* Advantage of this approach:
    - Code Reusability 
 
--------------------------------------------------------------------------------------------
Video 208: Types of Funtions and Syntax to define User Define Funtions

* How many types of Funtion there in Python:
    - 2 type of function
        Type 1 'Build-in' Function or 'Pre-defined' Functions:-
            - There are some functions which are coming automatically with the python software.
            -These function are called 'Build-in' or 'Pre-defined' functions.
                    eg. id(), input(), type(), print(), eval(), etc...

        Type 2 'User Defined Function / Customized Functions:- 
            - If in-build function not available we can define our own function to meet our programming requirment.
            eg. The function define on 'line 35' (calculate) is called User-Define Functions.

* For Build in Funtion there is nothing to explain much so We will more dissused about 'User Define Functions' only.
* Syntax:-
            def function_name(parameters):
                    '''doc string'''
                    
                    body

                    return value

* In function syntax how many keywords we are using :-
    1. def          ----> (Mandatory)
    2. return       ----> (Optional)
        - Its up to body of function that its need to return something or not.


1. Write a function to print with message. 

code:-

def wish():
    print("Hello Friends, Good Evening")
        
wish()
wish()
wish()
# Here it will print line 3 times because we calling function 3 times. 


output:-
Hello Friends, Good Evening
Hello Friends, Good Evening
Hello Friends, Good Evening

--------------------------------------------------------------------------------------------
Video 209: Function Parameters and Demo Programs

* Defination of Parameters:-
    - Parameters are input to the function within the function.
    - Do you know that funcions can take parameters.
    - These parameters acts as input to the function so inside a function body

    * Take very Spacial Care:- 
        - If a function take parameters, so at the time of calling compulsory, we have to provide value.
        - By mistake if you are not providing value immediately, we will get the error type error.

Q. WAF to take name of the student as input and print wish message by name?


def wish(name):
    print(f"Hello {name}, Good Evening")
    # we can use format string also and by below method also. 
    print('Hello', name, 'Have a good day')
        
wish('Aashish')
wish('Neha')
wish('Sunny')

output:-
Hello Aashish, Good Evening
Hello Aashish Have a good day
Hello Neha, Good Evening
Hello Neha Have a good day
Hello Sunny, Good Evening
Hello Sunny Have a good day

* if we not calling function then we will TypeError.

eg:-


def wish(name):
    print("Hello" ,name, "Good Evening")

wish()

Code:
wish()
TypeError: wish() missing 1 required positional argument: 'name'

Q. WAF to take a number as input and print its square value?

def squareit(num):
    sq = num * num
    print(f"The Square of {num} is : {sq}")

squareit(2)
squareit(4)
squareit(7)

Output:
The Square of 2 is : 4
The Square of 4 is : 16
The Square of 7 is : 49


--------------------------------------------------------------------------------------------
Video 210: Return Statement

- A function can return some value, Based on business logic executed by function, it can return some value.

def f1(a,b):
    some busniness logic
         "    "      "
    return result

- So who is going to use this 'result'?
  - The person who is calling this function f1, that person is going to use this result.


eg.
Q. WAF to accept 2 numbers as input and return sum?

code:
def add(a,b):
    sum = a + b
    return sum

add(10,20)

output:-

# Here, we are not receving anything in output because we are not holding the return value. 
# This code is valid, but we will get blank output because return value we did not use. 
# So code is valid and it will not give any output as well as any error. 
 
Code2: Now, I want to hold return value. 

def add(a,b):
    sum = a + b
    return sum

result = add(10,20)
print('The Sum:', result)
# Or we can use in below way also:-
print('The Sum:', add(100,200))

output:
The Sum: 30
The Sum: 300

* just call:-
    - add of 10,20 -> add(10,20)
        - It will return something, that return value I am holding in result -> result = add(10,20)
        - Whenever you are calling add this function in body will be executed 
          and it return something that return value we save inside result.
    - Now print of the retult -> print('The Sum:', result)
        - So we call a function return value we save inside a variable called 'result'.
        - Now, we are using that variable in remaining code -> print('The Sum:', result)
    - Instead of saving inside a variable directly you can use here also -> print('The Sum:', add(100,200))
        - Now this funtion return some value will printed here.  
* Here, we use return value and hold in reuslt thats why we got output.

* But here one small doubt is there about this function. Take very special care. 
    - What my next next important point.
    - We want to define a function.


Code3:- 

def f1():  # this function will not take any argument.
    print('Hello')
# this function will not take any argument.
# this function won't return anything.
# Now, We want to call this function as x = f1()
x = f1()
# Tell me this is valid or invalid ? 
# I am calling this function and return value I am saving inside  variable 'X'
# Now, I want to print a return value. 
print('The return value is: ', x)

output:-
Hello
The return value is: None


* Here, you will say that if a function is not returning anything then what it going to return so its invalid code.
    - But no its perfectly valid code. 
    - The reason for that is if you are not writing a return statement explicitly then the function is going to return 
      default value.
    - Default return value is 'None'
    - And None will store inside variable 'x'

* So every function in Python return some value.
  - It may be explicitly return value -> return sum (in code2, line 197)
  - Or default value by the Python which is 'None'


Q. WAF to find factorial of given positive int value?

* How to find factorial ?
    - I want to find 4 factorial 
        -> 4! = 4*3*2*1
        -> 3! = 3*2*1
    - Mean recursion but we don't know about recursion functions.
    - So that we will check leter part of course.
        - But If we know recursion then this will become very easy.

Code:-

def factorial(num):
    result = 1
    
    while num >= 1:
        result = result*num
        num = num -1
    return result 

print('The Factorial of 3 is:', factorial(3))
print('The Factorial of 4 is:', factorial(4))

# output:-
The Factorial of 3 is: 6
The Factorial of 4 is: 24


Q. WAF to find factorial of multiple number at same time.

code:-
def factorial(num):
    result = 1
    
    while num >= 1:
        result = result*num
        num = num -1
    return result 

for i in range(1,6):
    print('The Factorial of', i, 'is: ',  factorial(i))

# Output:-
The Factorial of 1 is:  1
The Factorial of 2 is:  2
The Factorial of 3 is:  6
The Factorial of 4 is:  24
The Factorial of 5 is:  120

--------------------------------------------------------------------------------------------
Video 211: Returing Multiple Values from a function 

* As a part of return statement one Python Speciality.
* In C, C++ or JAVA, A method or function can return. How many values can you please conform?
    -> only one value
* But, Python can return 'Multiple' values simultaneously. 


[* * * Returing Multiple Values from a function * * *]

Q. How a function can return multiple values ? 

Eg.

def sum_sub(a,b)
    sum = a + b
    sub = a - b
    return sum, sub 
# Here, we are returning 2 valuees.
# How we will capture mutiple value ? 

x,y =   sum_sub(20,10)
# I am calling this function by passing 20 n 10 as the argumenets.
# But this function can return 2 values.
# 1st to return value 'sum' which is 20 is saved in 'x'.
# 2nd to return value 'sub' which is 10 is saved in 'y'.

print('The sum is:', x)
print('The sub is:', y)

Code:- 
def sum_sub(a,b)
    sum = a + b
    sub = a - b
    return sum, sub 
x,y =   sum_sub(20,10)
print('The sum is:', x)
print('The sub is:', y)

output:
The sum is: 30
The sub is: 10

Eg. 


def cal(a,b):
    sum = a + b
    sub = a - b
    mul = a * b
    div = a/b

    return sum, sub, mul, div
# This is nothing but tuples

t = cal(20,10)
print(type(t))
print(t)
# now we will get all value seperated by comma is tuplel.
# how will you get value 1 by 1 then apply for loop. 
print("The Results are:")
for x in t:
    print(x)

Code:-

<class 'tuple'>
(30, 10, 200, 2.0)
The Results are:
30
10
200
2.0

* Note:- 
Python won't return mutiple values. 
Python return single value tuple, which internally contains mutiple values.


--------------------------------------------------------------------------------------------
[* * * Types of Arguments * * *]

Eg.

def f1(a,b):
   print(a+b)

f1(10,20)

Explanation :-

f1(a,b)     =>  known as    =>  Formal Parameters 
f1(10,20)   =>  Known as    =>  actual arguments

* In Python, we have 4 types of 'Arguments'
    1. Positional Arguments
    2. Keyword Arguments
    3. Default Arguments
    4. Variable length Arguments


Video 212 :- Positional Arguments

Name it self is saying:- Position => Place 

eg.
def sub(a,b):
    print(a-b)

sub(200,100)

* After looking above code tell me, which is 'a' value and 'b' value?
    -> a value is 200, b value is 100
    -> so 200-100 we will get 100 as result.

* So you can says that 'a' is 200 and 'b' is 100. 
    -> So you going to say, 'order'

* So arguments which are passing to the function in the *correct positional order* these argument are consider as ' Positional Argument'
* In  Positional Arguments *order* is imp.
    -> If you interchange order then result may be change.

sub(100,200)

* Now in this case, 'a' value become 100 and 'b' value become 200
    -> so 100-200 we will get -100 as result. 

* so keep in mind in  Positional Arguments the order are imp. 
* 1st passed value will be consider to be for 1st argument
* 2nd passed value will be consider to be the 2nd argument.

Code:

def sub(a,b):
    print(a-b)

sub(200,100)
sub(100,200)

# Output:
100
-100


--------------------------------------------------------------------------------------------
Video 213: Types of Arguments: Keyword Arguments(KA)

* I have to pass values arguments by keyword by parameter name, such type argumnets called 'Keyword Arguments'

Eg.

def sub(a,b):
    print(a-b)


sub(200,100) 
# Positional Argument 

sub(a=200, b=100)
sub(a=100, b=200)
# Keyword Arguments
# Here, we are specifing value that take 100 as a value and 200 as b value.

* In Keyword Arguments order is not important 

def sub(a,b)
   print(a-b)
sub(a=200, b=100)
sub(b=100, a=200)

output:
100
100

* KA are most commenly use Argument. 

* Can we use PA and KA at same and which is one is valid? 

sub(a=200, 100)  => SyntaxError: positional argument follows keyword argument
sub(200, b=100)  => Valid => 1st : Positional Argument and 2nd : Keyword Argument

Note:- 
    -> We can use both PA and KA simultaneously.
    -> But, 1st we have to take PA and then KA
        -> After KA we cannot take PA. 

--------------------------------------------------------------------------------------------
Video 214: Types of Arguments: Default Arguments(DA)

* Default means the argument which can take default value, which is having default value.
* Such type of arguments are called DA.

Eg1. 
def wish(name):
    print('Hello', name, 'Good Morning')

wish()          # It will give output if we not specifed any value. 

output:
   wish()      
    ^^^^^^
TypeError: wish() missing 1 required positional argument: 'name'

Eg2:
def wish(name):
    print('Hello', name, 'Good Morning')

wish('Aashish')

output:
Hello Aashish Good Morning

* So if a function are taking some arguments.
    -> If the function havin parameters yet the time of calling.
    -> Compulsory, we should provide value for the parameter. 
    -> Otherwise we will get error. 


* Sometimes my requirement so the caller may pass the value may not pass the value
* Even caller not passing also my function should be executed. 
* If the caller not passing value, can you please consider Default value?
* So how will you pass default value ? 

Eg.

def wish(name='Guest'):
    print('Hello', name, 'Good Morning')

wish()
wish('Aashish')

# output:
Hello Guest Good Morning
Hello Aashish Good Morning

* In line 530, we will write name='Guest'
    -> Note:- 'Guest' is a default value.
    -> When this default value will be considered
* If you are not passing any value.
    -> then only default value will be considered.

* So sometimes we can declare parameter with a default value. 
* Such parameters are called 'Default Arguments' are default parameters. 
* If the caller not passing default value explicitly, then only default value will be considered.


* * * Small Twist

Eg. 

# Both are Non DA -> Valid
def wish(name, msg):   
    pass

# Both are DA -> Valid
def wish(name = 'Guest', msg='Good Morning'): 
    pass

# 1st is Non-DA and 2nd is DA -> Valid
def wish(name, msg='Good Morning'): 
    pass

# 1st is DA and 2nd is Non-DA -> Invalid(SyntaxError: non-default argument follows default argument)
def wish(name = 'Guest', msg): 
    pass

* After DA we can't take Non DA while declaring the function 
* So in function declaration after DA, we can't take Non-DA.
* So DA should be last argument.
--------------------------------------------------------------------------------------------
Viedo 215: Types of Arguments : Variable Length Argument(VLA)

* You can any number of argument between 0 to no limit. 
* So we can declare an argument that can accecpt, that can take any number of argument.
    such type of argument is called 'Variable Length Argument(VLA)'.

* Syntax: f1(*n)
  *n    => Variable Length Argument(VLA)

Eg:

def f1(n):
    print("Variable Length Argument(VLA)")

f1()
f1(10)
f1(10,20,30,40)

# Output:
Variable Length Argument(VLA)
Variable Length Argument(VLA)
Variable Length Argument(VLA)

-> If we use f1(n), then we can pass only 1 argument.
-> If we use f1(*n), now we can any number of argument.

* When and where you going to use this VLA.
* Sometime you are passing zero argument,
  Sometime you are passing one argument,
  Sometime you are passing multiple argument,
* How you can differentiate these values inside the function, 
    how you can get 1st element, 2nd element, 3rd element 
    How can access?
* Internally this where the VLA paramenter.
* How would this implemented?
    -> Internally, this VLA will become tuple.

f1()                => Tuple with zero value/zero size. 
f1(10)              => Tuple with one value.
f1(10,20,30,40)     => Tuple with four value.

* Internally where VLA implemented by using which concepts?
    -> Tuple
* Where is the proof? How you can conclude it is the tuple?

Eg.

def f1(*n):
    print(type(n))
    print(n)

f1() 
#output:
()
<class 'tuple'>

f1(10)
#output:
(10,)
<class 'tuple'>

f1(10,20,30,40)
#output:
(10,20,30,40)
<class 'tuple'>


* sometimes I want to find sum of number, which may any lenght of number:-
* if we are not using VLA, then everytime we need to take different function.
    sum(10,20)          -> def sum(a,b)
    sum(10,20,30)       -> def sum(a,b,c)
    sum(10,20,30,40)    -> def sum(a,b,c,d)
* And unncessary length of the code is going to increase. 
* Readability will be down.
* So to handle such type of reqirement we can go with VLA.
* can using single line function for all 3 sum:
    def sum(*n)
    -> You can call this sum function by passing 0, 2, 3, 4 or any number of values.

Eg:

def sum(*n):
    total = 0
    for x in n:
        total = total + x
    print("The sum is:", total)

sum()           # output -> The sum is: 0
sum(10)         # output -> The sum is: 10
sum(10,20)      # output -> The sum is: 30
sum(10,20,30)   # output -> The sum is: 60


Eg:

def f1(*n):
   print(n)

f1(10,20)
f1((10,20,30), (40,50,60))

# output:
(10, 20)       => Tuple
((10, 20, 30), (40, 50, 60))    => Tuple of Tuple(Nested Tuple)

* It can be :
    Tuple of Tuple object
    Tuple of List object
    Tuple of Dict object 
    Tuple of Sets object

* So Whatever element you provide it will create tuple out of it. 

-----------------------------------------------------------------------------------------------
Video 216: Important Conclusions about Variable Length Arguments

* Can we use Normal Argument(NA) and VLA both simultaneously. 

Eg.

def f1(x, *y):
    print(x)
    print(y)
f1(10,20,30,40) # 10 is x value and (20,30,40) is why value. 

# Output:
10
(20,30,40)

* In above example, we pass 2 argument one is NA and another is VLA.
  when we pass value f1(10,20,30,40) then 1st element 10 is assgin to x
  and rest all convert into tuple and assgin to y. 

Eg2:

def f1(x, *y):
    print(x)
    print(y)
f1(10) # x value is 10 and y value is 'empty tuple'

# output:
10
()


Eg3:

def f1(x, *y):
    print(x)
    print(y)
f1()  

# output:
   f1()
TypeError: f1() missing 1 required positional argument: 'x'

# I am passing this function without any argument
# Python will give 'TypeError' because X is Normal Positional Argument you are not providing any argument
# VLA weather you are providing or not providing any argument. no problem. 
# But for PA or NA compulsory we should provide value. 

 
 Note:

 Eg4:

def f1(*x, y):
    print(x)
    print(y)
f1(10,20,30,40)

# output:
 f1(10,20,30,40)
TypeError: f1() missing 1 required keyword-only argument: 'y'

# In Java:- 
So always keep in mind that VLA, should last argument, by mistakenly if you take 
    VLA at beginning immediately compile time error in java. 

# In Python
def f1(*x, y):
    print(x)
    print(y)
f1(10,20,30,40) => TypeError

* This is valid but in this function calling entir x value will be (10,20,30,40)
    There is no 'y' value is define, so we will get the 'TypeError'  

# TypeError: f1() missing 1 required keyword-only argument: 'y'

* In line 763, one imp word 'keyword-only'
* After VLA if you are taking normal argument
  at time of calling compulsory, we have to provide value for y by using Keyword Argument.

Eg5:

def f1(*x, y):
    print(x)
    print(y)
f1(10,20,30,y=40) 

# output:
(10, 20, 30)
40

# Here, for Normal variable we are providing by keyword, the remaining thing will become 'x' values.

### imp conclusion ###
* After VLA if you are taking NA at the time of calling compulsory,
  we have to provide values for normal argument by using keyword.


Eg6:

def f1(*x, *y):
    print(x)
    print(y)
f1(10,20,30,y=40)

# Output:

  def f1(*x, *y):
               ^
SyntaxError: * argument may appear only once

* Tell me this is valid or not ? 
    => We can't take more than one variable length argument by mistake 
       if you are taking more then one VLA immediately will get 'SyntaxError'.


# Take very Special Care:- 

1. After VLA if we are taking any NA then we have to provide values by
   using keyworks for that NA.
2. More than one VLA are not allowed.

--------------------------------------------------------------------------------

Video 217: Differences between *args and **kwargs?

Q. Explain Differences between *args and **kwargs?

# *args

1. Varible Length Arguments(VLA)
2. f1(*n):   => Tuple
3. Example:-

def f1(*n):
   print(n)
f1()
f1(10)
f1(10,20,30)

# Output:

()
(10,)
(10, 20, 30)

++++++++++V/S++++++++++

#   **kwargs:-

1. Variable Length Key-word Arguments(VLKWA)
2. f1(**kwargs):   => Dictionary
3. Example:- 

def f1(**kwargs):
    print(kwargs)

f1()
f1(name='Durga', roll_no=101)
f1(A=10, B=20, C=30, D=40)


# output:-

{}
{'name': 'Durga', 'roll_no': 101}
{'A': 10, 'B': 20, 'C': 30, 'D': 40}


* Can we take VLA and VLKWA simultanously. 

Eg:

def f1(*args, **kwargs):
    print(args)
    print(kwargs)
f1(10,20, A=30, B=40)

# Output:
(10, 20)
{'A': 30, 'B': 40}

Eg2:- 


def f1(**kwargs, *args):
 
output:
  def f1(**kwargs, *args):
                     ^
SyntaxError: arguments cannot follow var-keyword argument

-----------------------------------------------------------------------

Video 218: Types of Argument : Case Study 

# Positional Vs Keyword Arguments 

1. We can use both PA and KA simultaneosly. 
2. But, 1st we have to take PA and then KA
   i.e. After KA we cannot take PA.

# Default vs Non-Default Argumenets

1. If we are not passing any value then only default value will be considered.
2. After DA, We should not take non-DA.
   i.e. DA should be last arguments.

# Variable Length Vs Normal Arguments

1. After VLA is we are taking any NA then we have to provide values by using 'Keywords' for that NA.
2. More then one VLA are not allowed.


Case Study:

Eg1:

def f1(arg1, arg2, arg3=4, arg4=8):
    print(arg1,arg2,arg3,arg4)

# Case1:-
f1(3,2)
# Output:- 3 2 4 8

# Case2:-
f1(10, 20, 30, 40)
# Output:- 10 20 30 40

# Case3:-
f1(25, 50, arg4=100)
# Output:- 25 50 4 100

# Case4:-
f1(arg4=2, arg1=3, arg2=4)
# Output:- 3 4 4 2

# Case5:-
f1()

# Output:-
 f1()
TypeError: f1() missing 2 required positional arguments: 'arg1' and 'arg2'

# Case6:- 
f1(arg3=10, arg4=20, 30, 40)

# Output:-
SyntaxError: positional argument follows keyword argument
* After KA we can't take PA.

# Case7:-
f1(4, 5, arg2=6)

# Output:
TypeError: f1() got multiple values for argument 'arg2'

# Case 8:-
f1(4, 5, arg3=5, arg5=6)

# Output:-
TypeError: f1() got an unexpected keyword argument 'arg5'

----------------------------------------------------------------------

Video 219: Types of variables: Global and Local

Q. What are various types of variables are these in Python functional programming?
1. There are 2 types of Variable are there:-
    i. Global Variable
    ii. Local Variable

        * * *  i. Global Variable * * *

1. I want to define variable here, 
a = 10

def f1():
    print(a)

def f2():
    print(a)

f1() => 10
f2() => 10

2. Here, where we declare the variable inside function or outside function? 
3. Any variable which is define outside function is known as 'Global Variable'.
4. These variable is no way connected/realted to any perticular function.
5. This common variable, any function can access. 


        * * * Local Variable * * *

Eg.

def f1():
    a = 10 
    print(a)

def f2():
   print(a)   # output: NameError: name 'a' is not defined

# This is a local variable
# Where you can use this variable, within that function only we can access.
# From outside its not possible to access. 

---------------------------------------------------------------------------------------

Video 220: Need of global keyword

* Very IMP concept:- 

Eg1:-
a = 10              # Global Variable(GV)
def f1():
    a = 20          # Local Variable(LV)
    print(a)

def f2():
   print(a)

f1()
f2()

# output:
20
10

* In python, GV and LV having same name is possible or not ?
    -> It is possible. 


* Now my requirement is, I don't want local variable. 
  Can you please refer this change?
  We are performing to global variable only.
  I don't want a local variable. 
* Can you please refer this veriable as the global variable only how you can do that 
    one speacial keyword we require to use. 
* What is that Special Keywords? 
    * * * Global Keyword * * *

Q. Can you please explain about 'Global Keyword' ?

Eg2:-
a = 10              # Global Variable(GV)
def f1():
    global a        
# To bring global variable to the function for the required modification
# It will convet GV into LV.
    a = 20          
# We are chanding the value of the GV. 
# Not it is not treated as Local Variable(LV)
    print(a)

def f2():
   print(a)

f1()
f2()

# Output:
20
20

Q. What is the purpose of Global?
    1. To make GV available to the function so that we can perform required modifications in that function.
       -> So if you are not using Global keyword now, it will become what LV. 
    2. To declare global variable directly inside the function. 


Eg3:

# a = 10
def f1():
    a = 20 
    print(a)

def f2():
   print(a)

f1()    # Output -> 20
f2()    # Output -> NameError: name 'a' is not defined

Eg4:
def f1():
    global a   
# We have to declare
    a = 20 
# Then we have to assign
    print(a)

def f2():
   print(a)

f1()    # Output -> 20 
f2()    # Output -> 20

----------------------------------------------------------------------------

Video 221. Important Clonclusions about global keyword

* Now look at below exmple and tell what will be the output:

Eg1:

a = 777
def f1():
    print(a)
    global a
    a = 999
    print(a)

f1()

* If you think that 
output:-
777
999
   So you are wrong. 

# Correct output:
SyntaxError: name 'a' is used prior to global declaration

* This code will give error, why ? 
  -> What is the important conclusion here, is before Global Declaration, we can't use that variable inside a function. 


Eg2:
a = 777
def f1():
    global a
    print(a)
    
    a = 999
    print(a)

f1()

# output:
777
999

* Global Keyword
1. To make GV available to the funcation, so that we can perform required modifications.
2. To declare GV inside function explicitly. 
3. Prior to global declaration(GD), we cannot use any variable. 
4. i.e. before using global keywor we cannot use that variable.
5. GD 1st and then we an use that variable. 


* Now I have GV and LV with same name, now inside a function.
    If you want to access a variable by default, priority is always for LV only. 
    But I don't want LV, I want GV only. 


Eg1:

a = 888 # GV
def f1():
    a = 999 #LV
    print(a) # ouput -> 999
# Inside a function if you are taking a variable 
# LV will get higher priority over global.
# If LV not there then only GV will be there. 

# But if in case we want to print value of 'a' as GV value not LV then how will you do ? 
# requirement : output -> 888

# Python contain Global() function is there, which is pyhon in build function is there. 

Globals() function:-
- It return a dict

eg.

globals()
{

}

- All GV related to this module, by defauly available 
- So in this GV 'a'= 888 this one key pair value is there. 
- So value of a will going to return dictionary 
- How to get value of a from GV list:-
    globals().get('a')
    or
    globals()['a']


- how we get value from dictionary.
    d.get(key)
    or
    d[key]


Eg1.

a = 888 # GV
def f1():
    a = 999 #LV
    print(a) # ouput -> 999
    print(globals())           # Here you will full GV list. 
    print(globals().get('a'))  # Now you can get value of 'a'
    print(globals()['a'])      # another method of getting obtaing value of a

    
f1()

output:
999

{
 '__name__': '__main__', '__doc__': None, 
 '__package__': None, '__loader__': <_frozen_importlib_external.SourceFileLoader object at 0x000001A0540F8E90>, 
 '__spec__': None, '__annotations__': {}, '__builtins__': <module 'builtins' (built-in)>, 
 '__file__': 'd:\\Study\\python_by_durga\\test1.py', '__cached__': None, 'a': 888, 
 'f1': <function f1 at 0x000001A0540E6160>
 }


* If a LV and GV haing a same name then bydefault you will get LV. 
* If you want to get GV then we need to use 'globals()' functions.

----------------------------------------------------------------------------------------------------

Video 222 - Recursive Functions(RF) - Introdcution and Demo Programs

Q. What is RF ?
- A function that call itself. 
- So as part of function body, I am calling same function itself.

Q. What is the Advantage of RF?
- 2 Main Advantage of RF.
    1. Complex Problem:- 
         We can solve complex problems very easily by using recusion. 
    2. Length of Code:-
         Lengh of the code will be reduced and Readability wil be bydefault improved.


Eg1:

Q. I want to find Facorial :-
    - without Recusion:-

def factorial(n):
    result = 1
    while n >= 1:
        result = result * n
        n = n - 1
    return result 

factorial(3)
---------------------------------
    - With Recusion:-

3! = 3 * 2!
   = 3 * 2 * 1!
   = 3 * 2 * 1 * 0!
   = 3 * 2 * 1 * 1
   = 6

Formula:-
    n! = n*(n-1)!

factorial(n) = n * factorial(n-1)

Eg2:

def factorial(n):
    if n == 0:
        result = 1
    else:
        result = n*factorial(n-1)
    return result 

print('Factorial of 100 is :', factorial(3))
# Factorial of 1 to 10 number
for i in range(11): #0 to 10
    print(f'The facorial of {i} is {factorial(i)}')

output:-
Factorial of 100 is : 6
The facorial of 0 is 1
The facorial of 1 is 1
The facorial of 2 is 2
The facorial of 3 is 6
The facorial of 4 is 24
The facorial of 5 is 120
The facorial of 6 is 720
The facorial of 7 is 5040
The facorial of 8 is 40320
The facorial of 9 is 362880
The facorial of 10 is 3628800

----------------------------------------------

Video 223 - Internal Tracing of Recursive Function
15 oct 2023


Facorial in details:

def factorial(n):
    print("Executing Factorial Function with n value:", n)
    if n == 0:
        result = 1
    else:
        result = n*factorial(n-1)
    print(f"Returning result of factorial({n}) is : {result}")
    return result 

print(factorial(5))


# Output:
Executing Factorial Function with n value: 5
Executing Factorial Function with n value: 4
Executing Factorial Function with n value: 3
Executing Factorial Function with n value: 2
Executing Factorial Function with n value: 1
Executing Factorial Function with n value: 0
Returning result of factorial(0) is : 1
Returning result of factorial(1) is : 1
Returning result of factorial(2) is : 2
Returning result of factorial(3) is : 6
Returning result of factorial(4) is : 24
Returning result of factorial(5) is : 120
120


--------------------------------------------------------

Video 224: Maximum Recursion Depth In Python

* Point is that factorial function is a Recursive function.
    - How you can conclude this ? 
        - Because Factorial function are internally calls same function itself, it is called Recusion.

* A function call a function, how many times it can call ? 
    - What is the recursion depth in Python? 
        - Do you have any restrictions? 
            -> Almost 950 times you can call internally like this. 

f(n) -> f(n-1) -> f(n-2) -> f(n-3)..... 950 times we can calls...

--------------------------------------------------------------------

Video 225: Anonymous Functions/ (Lambda Functions)

* Anonymous : No Identity, No name
* Sometimes we can define a function without a name. 
* Such types of nameless functions are called anonymous functions or lambda functions.

* So without name, how we will access the fucntion ? 

1. Nameless function
2. Instant use(One time usage)

* Main objective of Anonymous function is just for instant use or one time usage.

* Common life example:

- You are at your home -> GOing to office -> taking bus -> asking for ticket
  -> Bus conductor give ticket -> and you get down -> daily same process
  -> Did you ever ask name of Bus conductor ? -> No, Right 
    -> Because he has done his job then why to ask name and 
        we will never talk with that person again so no use of asking his name. 


* Normal Function Example:

def squareit(n):
    return n*n 

* Anonymous Function Example:

Eg2:-

lambda n : n*n          # This is 'Anonymous Function'.
s = lambda n : n *n     # This is no longer anonymous funcation, its named/normal funcation. 

# Syntax:
# lambda input_argumnets : Expression

print(s(4))  => 16

------------------------------------------------------

Video 226: 

Q. Lambda Function to Find Sum of given 2 numbers.

s = lambda a, b : a *b    
print(s(10,20))
print(s(100,200))

# output:-
200
20000


Q2. Lambda function to find biggest of given number.

2 input values:- a, b
----------------------
----------------------
which bigger ? how to check? :- 
            if a > b:
                print("a is bigger")
            else:
                print("b is bigger")

Code:

bigger = lambda a, b: a if a > b else b
print(bigger(10,20))
print(bigger(-10, -20))

# output:-
20
-10


* 3 input values:-
----------------------
----------------------
Code:-

bigger = lambda a,b,c: a if a>b and a>c else b if b>c else c 
print(bigger(10,30,20))
print(bigger(4,6,5))
print(bigger(-10,-30,-20))

# output:-
30
6
-10

---------------------------------------------------------------------------------------
video 227 : Function as argumenet to another funcation

*Thing to remember:-
    - In functional programming, we can pass a function as argument to another funcions.
    - Suppose I have 'sum' function is there, 
        sum(a,  b)
            10, 20
        f1(f2, x)  -> Passing one function f2 as argumenet to another funcation f1

- Where you have such types of requirement ?
    - Best example and pre-define functions we have :-
        - 'filter function' => eg. filter(function, sequence)
        - 'Map function'    => eg. map(function, sequence) 
        - 'reduce function' => eg. reduce(function, sequence) 
    - All these functions have 1st argumenet is another function. 
    - All this function always expecting function as argumenet.
    - If you want to a function as argument to another function,
        then "Lambda function" is the best choice. 

------------------------------------------------------------------------------------------------------
Date - 17th Oct 2023
Video 228: Shorter Code by using filter() function

Q. What is filter ? 
-> So filter means only required things we will take so unrequired things you can remove. 
-> So ignore the unwanted things, only required thing we can take. 
-> such type of thing is nothing but filter.

Example1:-
Classroom - 100 students - filter top 5 students - based on marks
- providing scholarship - select a top 5 students  - ho you can filter 
- so that filter function will be used.

Example2: from 1 to 10 filter only even numbers or odd numbers

- So filter can used to filtr objects from the given sequence based on sone condition.

* Syntax:

filter(function, sequence)

- Second argumenet is always 'sequence' and 1st argumenet is 'function'.
- so from this sequence, can you please filter based on some condition 
    and who is responsible to perform that conditional checks?
    This function is responsible to perform that conditional check.
- Every element present in the sequence, it will collect, it will collect and then apply this function.
- If this function returns true, it is condition batisfied, then the result will be included.
- Like it is responsible to check some bollean condition, thats why its return True/False.
    If it returns 'True' then that element will be added in the result.
    If this function returns false, then that element won't be added in the result.


- So filter function will take 2 argumenets. 
    1. function
    2. sequence

Ex1 - without filter funcation:-

l = [0,1,2,3,4,5,6,7,8,9,10]

# We need to filter only even number

def isEven(n):
    if n % 2 == 0:
        return True
    else:
        return False

l1 = []
for n in l:
    if isEven(n) == True:
        l1.append(n)
print(l1)

# Output:
[0, 2, 4, 6, 8]


Ex2: With Filter function

l = [0,1,2,3,4,5,6,7,8,9,10]

# We need to filter only even number

def isEven(n):
    if n % 2 == 0:
        return True
    else:
        return False

l1 = list(filter(isEven, l))
print(l1)

Output: 
[0, 2, 4, 6, 8, 10]


* Explanation:-
l1 = filter(isEven, l)

# Understand this line, Every Element present inside 'l', this is the given sequence.
# Can please apply isEven function, if is even function returns true, then that element will be added in the result.
# If isEven function False, then that element won't be added. 

print(l1)

# Output :- <filter object at 0x0000020BBE6EB7F0>
# Result we got 'filter object' not list. 


* Best use case senario, I want to give increment, check how many employee have salary less then 10k.
** I want to send mail to gmail mail id's not other one.
    then filter is best choice. 

* We learn, if you want to pass a function as argument to another function, then lambda function is use best choice.
* So filter function with lambda will become more powerful.

Ex3: Filter with lambda function:

l = [0,1,2,3,4,5,6,7,8,9,10]
l1 = list(filter(lambda n: n % 2 == 0, l))
print(l1)

# Output:
[0, 2, 4, 6, 8, 10]

* Did you saw its just 2 line of code. 
* so Biggest Advantage of Lambda function is :-
    - Concise code.
    - Whereever we are passing function as the arguments.

-------------------------------------------------------------------------------------

Video 229 : filter() Function Demo Programs

Code1:

l = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21)
even = list(filter(lambda n: n % 2 == 0, l))
print(even)
odd = list(filter(lambda n: n % 2 != 0, l))
print(odd)
nby3odd = list(filter(lambda n: n % 3 == 0 and  n % 2 != 0, l))
# Number divisiable by 3 and odd number.
print(nby3odd)

# Output:
[0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
[1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21]
[3, 9, 15, 21]

Code2: Find the name of Heroines whos name start with 'A'.

heroines = [
    "PriyankaChopra",
    "DeepikaPadukone",
    "KareenaKapoorKhan",
    "AliaBhatt",
    "KanganaRanaut",
    "AishwaryaRaiBachchan",
    "AnushkaSharma",
    "KatrinaKaif",
    "VidyaBalan",
    "SonamKapoorAhuja"
]

nstartwithA = list(filter(lambda name: name[0] == 'A', heroines))
print(nstartwithA)

# Names whose length divisible by 5 
lengthby5 = list(filter(lambda name: len(name) % 5 == 0, heroines))
print(lengthby5)

# name length is odd
oddname = list(filter(lambda name: len(name) % 2 != 0, heroines))
print(oddname)

# output:-
['AliaBhatt', 'AishwaryaRaiBachchan', 'AnushkaSharma']
['DeepikaPadukone', 'AishwaryaRaiBachchan', 'VidyaBalan']
['DeepikaPadukone', 'KareenaKapoorKhan', 'AliaBhatt', 'KanganaRanaut', 'AnushkaSharma', 'KatrinaKaif']

---------------------------------------------------------------------------------

Video 230:- map() function Theory and Demo Programs

* In case of filter() function:
    - input_list    : 10 elements
    - Output_list   : <= 10

* Sometimes our reqirement is for every element present in the given sequence, apply some function generate new values.
* For every element present in the given sequence, apply some function and generate new element with the required modification.
    map(funciton, sequence)
* Function argument can be applied to each element of sequence and generate a new sequence.

input:- 
    l = [1, 2, 3, 4, 5]
output: map()
    l1 = [1, 4, 9, 16, 25]

* Here, for every input element (1, 2, 3, 4, 5) map value(1,4,9,16,25), we will generate by applying some function.

* In case of map() function:
    - if input contain 5 element 
    - Compulsory output should contain 5 element only.

Eg:
- we need to increase employee salary less 10000, 
    -   suppose we have 500 employee                    => input
    -   out of which 250 employee salary is below 10k   => output ->use filter() function
    -   How many employee salary got increased is 250   => input = output -> map() function

Syntax:
    map(function, sequence)

* Example1:- without lambda we are using map() function
l = [1, 2, 3, 4, 5]
def squareIt(n):
    return n*n
l1 = list(map(squareIt, l))
print(l1)

# output:
[1, 4, 9, 16, 25]

* Example2: by using Lambda and map fucntion
l = [1, 2, 3, 4, 5]
l1 = list(map(lambda n: n*n, l))
print(l1)

# output:
[1, 4, 9, 16, 25]

_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

* we can use map funcation with multiple sequence also.

Ex1:-
l1 = [1, 2, 3, 4, 5]
l2 = [5, 10, 15, 20, 25]
l3 = list(map(lambda x,y: x*y, l1,l2))
print(l3)

# ouput:
[5, 20, 45, 80, 125]

* remember, this one Even both the sequence are having different lenght, 
    no problem at all, up to common lenght, this operation will be apply.
    remaining element will be ignored. 

Ex2:

l1 = [1, 2, 3, 4, 5, 6, 7, 8]
l2 = [5, 10, 15, 20, 25]
l3 = list(map(lambda x,y: x*y, l1,l2))
print(l3)

# output:
[5, 20, 45, 80, 125]

Ex3: 


l1 = [1, 2, 3, 4, 5]
l2 = [1, 2, 3, 4, 5]
l3 = [1, 2, 3, 4, 5]
l4 = list(map(lambda x,y,z: x+y+z, l1,l2,l3))
print(l4)

output:
[3, 6, 9, 12, 15]

* things to remember:-
    - Filter function -> for conditional check to filter some values
    - Map function -> for some modification, some perform some operation.
        may be square or sum or multiplication operations. 

------------------------------------------------------------------------

Video 231 : reduce() funciton and Demo Programs

                filter()        map()       reduce()
input:-             10            10            10
output:-         <= 10            10            1
in-build function   Yes            Yes          No (need to import from 'func' tool module)

> Reduce() function :- Reduce elements form a given sequence into a single element by applying some function.

> suppose employee salary is there...
    - what is the sum/average of all employee salaries?

> so by applying sum function, So it reduces a sequence of values into a single value. 
> If you have such type of reqirement, happily you can go for what reduce function

> These 2 things are python's inbuild functions, but reduce is not python inbuild function.
> It is coming from some speacial module, Compulsory we have to import explicitly.
> Where it is available :- Func Tool Package -> Functools

Ex1:

from functools import reduce
l = [10,20,30,40,50]
result = reduce(lambda x, y : x+y, l)
print(result)

# output:
150

Ex2:-Fine the Sum of 1st 100 Number By using redcue() function.

from functools import reduce
result = reduce(lambda x, y: x+y, range(1,101))
print(result)

output:-
5050

> Explanation:- there is math Formula to sum N number:-

result = (n*(n+1))/2
       = (100*101)/2
       = 10100/2
       = 5050


----------------------------------------------------------
Summary:

what is anonymous function? 
    what is lambda function? 
        what are benefis of lamda function? 
            what is filter funciton?  
                what is map function?  
                    what is reduce function ? in python


>>>

Certainly! Let's go over each of these concepts in Python:

1. **Anonymous Function**:
   - An anonymous function, also known as a "lambda" function, is a function without a name or a defined identifier. 
     It's a small, throwaway function defined using the `lambda` keyword.
   
2. **Lambda Function**:
   - A lambda function is a small anonymous function that can have any number of parameters, 
     but can only have one expression. 
     It is defined using the `lambda` keyword. 
     Lambda functions are commonly used for short tasks where defining a separate function might be overkill.
   
3. **Benefits of Lambda Functions**:
   - Conciseness: Lambda functions are very concise and can be defined in a single line of code.

   - Readability: For simple operations, 
                  lambda functions can make code more readable by avoiding the need to define a separate named function.

   - Avoiding Function Definition: If you need a function that you'll only use once, 
                                   it's more convenient to define it with a lambda rather 
                                   than writing a full function definition.

4. **Filter Function**:
   - `filter()` is a built-in Python function 
      that takes a function and a sequence (e.g., a list) as inputs. 
      It applies the function to all the items in the sequence and 
      returns an iterator of the items for which the function returns `True`.
   
   - Example:
     ```python
     numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
     even_numbers = list(filter(lambda x: x % 2 == 0, numbers))
     # even_numbers will be [2, 4, 6, 8, 10]
     ```

5. **Map Function**:
   - `map()` is a built-in Python function 
      that applies a specified function to all the items in an input list (or other iterable) and 
      returns an iterator of the results.
   
   - Example:
     ```python
     numbers = [1, 2, 3, 4, 5]
     squared_numbers = list(map(lambda x: x**2, numbers))
     # squared_numbers will be [1, 4, 9, 16, 25]
     ```

6. **Reduce Function**:
   - `reduce()` is a function in the `functools` module (Python 3.x) 
      that applies a function of two arguments cumulatively to the items of a sequence, 
      from left to right, so as to reduce the sequence to a single output.
   
   - Example (Python 3.x):
     ```python
     from functools import reduce
     numbers = [1, 2, 3, 4, 5]
     product = reduce(lambda x, y: x * y, numbers)
     # product will be 120
     ```

These functions are powerful tools in Python that allow for concise and efficient operations on data. 
They are commonly used in functional programming paradigms and for tasks that involve processing sequences of data.
