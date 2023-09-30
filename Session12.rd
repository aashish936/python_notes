Tuple Data Structure

Video 166:- Tuple Properties    

* Tuple is same as List so 1st 4 properties are same.

1. Tuple is exactly same as List except that it is immutable. i.e once we creates Tuple
object,we cannot perform any changes in that object.
Hence Tuple is Read Only version of List.
2. If our data is fixed and never changes then we should go for Tuple.
3. Insertion Order is preserved
4. Duplicates are allowed
5. Heterogeneous objects are allowed.
6. We can preserve insertion order and we can differentiate duplicate objects by using
   index. 
7. Hence index will play very important role in Tuple also.
8. Tuple support both +ve and -ve index. 
9. +ve index means forward direction(from left to right) 
10.-ve index means backward direction(from right to left)
11. We can represent Tuple elements within Parenthesis and with comma seperator.
12. Parenethesis are optional but recommended to use.
13. Tuple is Read Only version of List.

eg. 
t = (10, 'neha', 20, 10)
    
    this is with Parenethesis, 
    Duplicates are allow, 
    Hetrogeneous objects are allowed.
    
print(t[0])     >> 10 # this 10 at 0 index.
print(t[-1])    >> 10 # this 10 at 3rd or -1 index.
    
- By using index we can differanciate duplicate elements. 
- So ordered will be preserved by using index.


t = 10, 'neha', 20, 10 
- if you don't want to perenthities

Q. How we will come to know that t is tuple. 
print(type(t))  -> Class 'Tuple'

Example1 of List:-

l = [10,20,30,40]
l[0] = 777

# 10 at index 0 will be replace by 777
# once we create list object we can perform any type of changes in list

print(l)

Output will be :-
# [777,20,30,40]
# So List is Mutable in Nature

Example2 of Tuple:-

l = (10,20,30,40)
l[0] = 777
print(l)

Output:-
    l[0] = 777
TypeError: 'tuple' object does not support item assignment

* Now some senario where we going to use list object and 
when we going to use Tuple object.

1. Youtube/Facebook comment are there. 
Here, we can add, update, edit and delete comment.
So Youtube comment I want to store some where then I will use which type of object.

2. Suppose comment will never going to change and it will be remain always fixed/same. 
and Vending machine where input is fixed like 10, 20, 50, 100 INR it will take.
and In cloud server where its state are fixed like, 'START', 'STOP', 'TERMINATED', 'STOP' and 'RUNNING' 
So in this case we are using Tuple.

-------------------------------------------------------------------------

Video 167 - Single Valued Tuple

a = (10, 20, 30)
b = (10, 20)
c = (10)

This is Tuple DT:- a = (10, 20, 30)
This is Tuple DT:- b = (10, 20)

This is Int DT:- c = (10)

So this above single element in perenthities are we use for Int DT.
eg. 
t = (10+20)*(30)


If we want to print Tuple DT using single element. 

eg1:-
t = (10,20,30)
print(type(t))
print(t)

>> Class 'Tuple'
>> 10,20,30

If we remove one element then still it remain Tuple, eg2:-
t = (10,20)
print(type(t))
print(t)

>> Class 'Tuple'
>> 10,20

If we remove one more element then now it change eg3:-
t = (10)    # By default it is Int Type.
print(type(t))
print(t)

>> Class 'Int'
>> 10


* Now how we write single element/value using "Tuple".
Note: We have to take special care about single valued tuple.compulsary the value
should ends with comma,otherwise it is not treated as tuple.



t = (10, )  
print(t)
print(type(t))

output:
(10,)
<class 'tuple'>

* Now lets have look at below example and tell me which are tuple:


t = ()              ->  Valid
t = (10)            ->  Invalid
t = 10              ->  Invalid
t = (10,)           ->  Valid
t = 10,             ->  Valid
t = (10,20,30)      ->  Valid
t = (10,20,30,)     ->  Valid
t = 10, 20, 30      ->  Valid

Do you know in Python if it is a List, set Dict or Tuple
so mutiple values at last you can take comma.
So value end with comma is normal in python.

------------------------------------------------------------------------------------------------

Video 168 - Creation of Tuple Object

1. Empty Tuple object
   t = ()

2. Single Value Tuple
   t = (10,)
   t = 10,

3. Multiple valued Tuple
   t = (10,20,30)
   t = 10,20,30
   t = (10,20,30,)
   t = 10,20,30,

4. By using Tuple Function:
   t = tuple(any_sequence)

eg1:- 
   l = [10, 20, 30]  # For given List if you want to convert into Tuple
   t = tuple(l)      # Then we need to use this Syntax
   print(t)

   output:
   (10, 20, 30)

eg2:- For the given range of values, I want to create a Tuple
      t = tuple(range(1,11,2))
      print(t)

     Output:- 
      (1, 3, 5, 7, 9)

      t = tuple(range(1,11,2))
      print(t)

      Output:-
      (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

eg3: convert string into Tuple
    t = tuple('aashish')
    print(t)

    Output:-
    ('a', 'a', 's', 'h', 'i', 's', 'h')


eg4: With Dunamic input (Input from user/keyboard)
    Syntax:- t =  eval(input("Enter Tuple of values:"))



t =  input("Enter Tuple of values:")
print(type(t))

Output:
Enter Tuple of values:10,20,30,40
<class 'str'>


# By default input type will be "String" So to convert into 'Tuple' we need to use 'Eval' function.
    
t =  eval(input("Enter Tuple of values:"))
print(type(t))

Output:
Enter Tuple of values:10,20,30,40
<class 'tuple'>

----------------------------------------------------------------------------------------

Video 169: Accessing Elements of Tuple By using index and Slice operator

So we already study about accessing element using index and slice operator in 'String' and 'List'.
Here, we will follow the same concepts. 

1. By using index

t = (10, 20, 30, 40, 50, 60)
print(t[0])     > 10
print(t[-1])    > 60
print(t[100])   > IndexError: tuple index out of range

2. By using slice Operator

Syntax: tuple[begin:end:step]
* Step value can be +ve or -ve but it can't be zero
* If step value is +ve then we need to move forward direciton 
  (form begin to end-1)
* It step value is -ve then we need to move backward direction
  (from begin to end+1)

Note:- 
1. In forward direction if end value is 0 then result i always empty.
2. In backward direction if end value is -1 then result is always empty.

eg.

t = (10, 20, 30, 40, 50, 60, 70, 80)


-ve index	-8   -7   -6   -5   -4   -3    -2    -1
		    10,  20,  30,  40,  50,  60,   70,   80
+ve index	 0    1    2    3    4    5    6     7


eg:

t = (10, 20, 30, 40, 50, 60, 70, 80)
print(t[2:5])     >>  (30, 40, 50)
print(t[::2])     >>  (10, 30, 50, 70)

-----------------------------------------------------------------------------------------------

Video 170:- Mathematical Operators for Tuple :- Concatenation Operator(+) and Repetition Operator(*)

1. Concatenation Operator(+)

eg1:-
t1 = (10, 20, 30)
t2 = (40, 50, 60)

t3 = t1 + t2
print(t3)
print(t2)
print(t1)

output:-
(10, 20, 30, 40, 50, 60)
(10, 20, 30)
(40, 50, 60)

Here, value of t1 and t2 are same. Because of Concatenation in the existing Tuple,
we are not performing any change at all.

Note: In + operator both element must be Tuple only. 
       one is Tuple and next element it will give error.

t3 = t1 + 10   => Invalid
t3 = t1 + [10, 20]  => Invalid

eg:-

t1 = (10, 20, 30)
t2 = (40, 50, 60)

t3 = t1 + 10
print(t3)

output:-
       t3 = t1 + 10
         ~~~^~~~
TypeError: can only concatenate tuple (not "int") to tuple

eg3:-

t1 = (10, 20, 30)
t2 = (40, 50, 60)

t3 = t1 + [10,20,40]
print(t3)

Output:-
    t3 = t1 + [10,20,40]
         ~~~^~~~~~~~~~~~
TypeError: can only concatenate tuple (not "list") to tuple


2. Repetition Operator(*)


t1 = (10, 20, 30)
t2 = t1 * 3
print(t2)

Output:
(10, 20, 30, 10, 20, 30, 10, 20, 30)

Note:- In * operator, one element should be 'Tuple' and another element must be 'Int' DT only.
       If it is not Int type then will get error. 

eg:
t1 = (10, 20, 30)
t2 = t1 * 3.0
print(t2)

Output:-
    t2 = t1 * 3.0
         ~~~^~~~~
TypeError: can't multiply sequence by non-int of type 'float'


Code:- What will be the final output.

t1 = (10, 20)
t2 = (30, 40)
t3 = t1 + t2
t4 = t3 * 3
print(t3)
print(t4)

Output:
(10, 20, 30, 40)
(10, 20, 30, 40, 10, 20, 30, 40, 10, 20, 30, 40)

==================================================================================================

Video 171: Equality, Relational and Membership Operators for Tuple


1. Equality Operator:- ==, !=

t1 = ('Cat', 'Rat', 'Dog')
t2 = ('Cat', 'Rat', 'Dog')
t3 = ('CAT', 'RAT', 'DOG')
t4 = ('Rat', 'Dog', 'Cat')

print(t1 == t2)     # True
print(t1 == t3)     # False
print(t1 == t4)     # False

1. Number of element must be same
2. Order of element must be same
3. Content of element must be same

------------------------------------

2. Relational Operator :- <, <=, >, >=

eg1:-

t1 = (10, 20, 30)
t2 = (30, 15, 40)
print(t1<t2) 
print(t1>t2) 


# It will always compare the 1st element 1st if 1st element is same then only it will goto next element.

Output:
True
False

eg2:

t1 = (10, 20, 30)
t2 = (10, 5, 70)
print(t1<t2) 
print(t1>t2) 

# 1st element are same so it will comepare the 2nd element. 
Output:
False
True


eg3:

t1 = (10, 20, 30)
t2 = (10, 20, 30, 40, 50)
print(t1<t2) 
print(t1>t2) 

# Here, T1 will be less then t2
Output:
True
False



3. Membership Operator in Tuple:-

in, not in

t = (10, 20, 30)
print(10 in t)
print(50 not in t)
print(60 in t)

Output:- 
True
True
False

----------------------------------------------------------

Video 172:- Important Methods and Function for Tuple: len(), count() and index()




