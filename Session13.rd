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
index. Hence index will play very important role in Tuple also.
Tuple support both +ve and -ve index. +ve index means forward direction(from left to
right) and -ve index means backward direction(from right to left)
7. We can represent Tuple elements within Parenthesis and with comma seperator.
Parenethesis are optional but recommended to use.


1. Order is applicable
2. Duplicates are allowed
3. Hetrogeneous Objects
4. Indexing and Slicing 

    *5. Immutable(Once Tuple is created then we can't change its contain)
    *6. ( ) perenthities but it is optional.
Hence Tuple is Read Only version of List.


    t = (10, 'neha', 20, 10)
    this is with perenthities, 
    Duplicates are allow, 
    Hetrogeneous objects are allowed.
    
    print(t[0])     >> 10 # this 10 at 0 index.
    print(t[-1])    >> 10 # this 10 at 3rd or -1 index.
    By using index we can differanciate duplicate elements. 
    So ordered will be preserved by using index.




    t = 10, 'neha', 20, 10 
    if you don't want to perenthities

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

2. Suppose comment will never going to change and it will be 
remain always fixed/same. 
and
Vending machine where input is fixed like 10, 20, 50, 100 INR it will take.
and
In cloud server where its state are fixed like, 'START', 'STOP', 'TERMINATED', 'STOP' and 'RUNNING' 

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



