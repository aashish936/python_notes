Session13.1 : Set Data Structure

Video 179:- Set Properties

* What is differance between 'List' and 'Set'?
-> My requirement is, I don't want duplicate values.
-> Unique objects only I want 
-> Order not important for me

If you have such type of requirement then happily we can
go for 'Set Data Structure'.

-> If you want to represent a group of unique objects as a single 
entity where order is not important.

1. Duplicates are not allowed
2. Order is not applicate
3. Indexing and Slicing Concepts are not applicable
4. {10, 20, 30}
5. Hetrogeneous Objects are allow
6. Mutable in Nature(Add/Remove/update are allowed)
7. Mathematical operations like:-
    Union, intersection, differance, symmetric differance


Note:-
[] - List
() - Tuple
{} - Set
{} - Dict

* Create empty set object:- 
- Here we cannot use 'empty curly braces' - { }
- Bydefault empty curly braces {} is 'Dict Data type' but not set type.


eg.
s = { }
print(type(s))
>> <Class 'dict'>


Q:- Why python people give priorities to 'Dict' over 'set'?
-> The reason is among 'set' and 'dict', 'dictionary is the most 
commonly used, thats why be defauly it is treated as the 'dict' type.

Q:- How we can use empty set ?

s = set()

# how to add element

s.add(10)
s.add('Z')
s.add('A')
s.add(20)
s.add(10)
print(s)

Output:
{'A', 10, 20, 'Z'} # Here, duplicate not allow, Order is not fix.

# Indexing is not allow
print(s[0])

error:
 print(s[0])
TypeError: 'set' object is not subscriptable

# Slicing is not allow
print(s[1:3])
    print(s[1:3])
TypeError: 'set' object is not subscriptable


Q. Diff. between List and Set. 

                        List          Set
1. Duplicate            allow         not allow
2. Insertion Order      allow         not allow
3. Example              [10, 20, 30]  {10, 20, 30} 
4. Indexing & Slicing   allow         not allow     



----------------------------------------------


Video 180 - Creation of Set object

1. Empty Set 

s = { }      # this is dict but not set
s = set()    # we need to use set function

2. If we have data already:

s = {10, 20, 30, 40}
#within curly braces a list of comma separated values,
which is nothing but 'set' only.

3. By using set() function:
if you have string, I want to create set by using element in string.
if you have list, I want to create set by using all element in List.

If I want to conver from string, list, range to 'set', for given collection.

eg1. 
l = [10, 20, 30, 40]
s = set(l)
print(s)

# We will get {10, 20, 30, 40} but order is not fixed. 

Output:-
{40, 10, 20, 30}

eg2.
s1 = ("Hello Aashish, How are you?")
s = set(s1)
print(s)

Output:- 
{'r', 'i', '?', ' ', 's', 'A', 'e', ',', 'w', 'o', 'y', 'u', 'h', 'H', 'l', 'a'}

eg3:
s2 = set(range(0,101,10))
print(s2)

Output:-
{0, 100, 70, 40, 10, 80, 50, 20, 90, 60, 30}

eg4:
s = set('aashish')
print(s)

output:- 
{'a', 'i', 's', 'h'}

eg5: By using input function:

s = eval(input("Enter value:"))
print(s)

output:
Enter value:{10,20,30,40}
{40, 10, 20, 30}

----------------------------------------------------



Video 181 :- Mathematical Operators for set:

s1 = {10, 20, 30}
s2 = {30, 40, 50}

-------------
s3 = s1+s2
s3 = s1*3
-------------

- Plus Operators and Star Operators we can happily apply in 
List and Tuple but not in 'set'. 

- By mistakenly if you use + or * in set then you will get 
"TypeError".

eg1.
s1 = {10, 20, 30}
s2 = {30, 40, 50}

s3 = s1+s2
print(s3)

ouput:- 
    s3 = s1+s2
TypeError: unsupported operand type(s) for +: 'set' and 'set'

eg2:
s1 = {10, 20, 30}
s2 = {30, 40, 50}

s3 = s1*3
print(s3)

ouput:
   s3 = s1*3
TypeError: unsupported operand type(s) for *: 'set' and 'int'


Now, we will check Equal Operators is allow or not. 

eg3:-
s1 = {10, 20, 30}
s2 = {30, 10, 20}

# Both s1 and s2 having same elements but order is not same.
# and in 'set' order is not important. 

print(s1==s2)

output:-
True

print(s1!=s2)

ouput:-
False

Hence, Equal Operators is applicable. 

* Relational Operator for set

s1 = {10, 20, 30}
s2 = {20, 10, 5, 6, 7}

print(s1<s2) => False
print(s1>s2) => False
print(s1<=s2) => False
print(s1>=s2) => False


Note:- Relational Operator applicable for set, but not implemented
that much meaningful. 

* Membership Operator : It is applicable for 'set'

in
not in

eg.

s = {10, 20, 30, 40}
print(10 in s)          #o/p : True
print(50 in s)          #o/p : False
print(50 not in s)      #o/p : True

--------------------------------------------------


Video 182 :- Important Functions and methods for set:len(), add() and update()

1. len():
        Returns number of elements present in set.
        It is a python in-build function.

eg. 

s = {10,20,30,40}
print(len(s))

o/p:
4

2. add():
        It is a 'set' specific method. 

s = {10,20,30,40}
s.add(50)
s.add(60)
print(s)

Here, we should get {10,20,30,40,50,60} output but order is not sure.

o/p:
{40, 10, 50, 20, 60, 30}

Note: For 'list' we have 'append' method. 

Q: Why for 'list' we have 'append()' method and
why for 'set' we have 'add()' method?

l = [10,20,30,40]
l.append(50)
print(l)

o/p:
[10,20,30,40,50]   #fix output

Now append in the case of list the specfied element will be added yet last.
That is the reason append is the method use in list.


But it is 'set' where this element will going to added,
I don't know maybe at 1st or at 2nd or at last position, somewhere
because order is not important in 'set'. 
That why we are simple use word 'add' not 'append'. 

3. update():
            Which purpose we can use update method to add multiple items to set. 
            we can pass any number of arguments.
            Argument should be iterable object not invidivual Operator
            like list, set, dict, string.

eg.

s.update(s1,s2)

All element present in s1 and s2 but all given Operator should be 


s.update(s1)
s.update(s1,s2,s3)

eg. 
s = {10,20}
l = [30,40]

s.update(l)

print(s)

o/p:
{40, 10, 20, 30}

eg2:

s = {10,20}
l = [30,40]
s.update(range(1,6), 'durga')
print(s)


o/p;
{1, 2, 3, 4, 5, 'u', 10, 'g', 'r', 'd', 20, 'a'}



Q: Differences between add() and update()


    add()                               update()
1. We can use add()             1. We can use update()
method to add                       method to add 
individual item to                  mutiple item to 
the set.                            the set.

2. add() method can             2. Update() method can take any number 
take only one                       of arguments, but all arguments should be 
agrument.                           iterable object.


Q. Which of the following are valid.

s.add(10)
s.add(10,20,30)
s.update(10)
s.update(range(1,10,2), range(0,10,2))

valid
invalid
invalid
valid

---------------------------------------------

Video 183 - Important Methods and Functions for set:
remove(), discard(), pop() and clear()

*** There are 4 methods to remove element from set.

1. remove()

syntax:
s.remove(x)   

#specfied element will be removed
#if element not available then it will give 'KeyError'

eg1:-

s = {10,20,30,40}
s.remove(30)
print(s)

 o/p: {10,20,40}
Actual o/p: {40, 10, 20}

eg2:-

s = {10,20,30,40}
s.remove(50)
print(s)

o/p:
    s.remove(50)
KeyError: 50

So, Problem here is if specfied element not present then it 
gives KeyError so what we want that if element not present
then don't give error simply ignore or discard it. 

2. discard()

s.discard(x)

eg1:-

s = {10,20,30,40}
s.discard(30)
print(s)

o/p: {40, 10, 20}

eg2:-

s = {10,20,30,40}
s.discard(30)
print(s)

o/p: {40, 10, 20, 30}


3. pop()

s.pop()

- This pop() method don't take any arguments as input,
it is going to remove and return some random element.

which element it will going to remove we don't know.  


s = {10,20,30,40}
print(s.pop())     # may remove 40
print(s.pop())     # may remove 10
print(s.pop())     # may remove 20
print(s.pop())     # may remove 30
print(s)           # It will give empty set()

# onces all element remove then it will give error when we use pop() method in empty set.
print(s.pop())     
output:-
  print(s.pop())
KeyError: 'pop from an empty set'

3. Clear()

- If I want to remove all element from 'set', then you need to use clear() method.

s = {10,20,30,40}
print(s)        #o/p: {40, 10, 20, 30}
s.clear()
print(S)        #o/p: empty set()

output:-

{40, 10, 20, 30}
set()


---------------------------------------------

Video 184: Operators: union(), intersection(), difference() and symmetric_difference()


1. union() : All element present in s1 and s2.
- To combine the elements of 2 sets into a single set,
 then we required to go for union operations.

eg:-
s1 = {10, 20, 30, 40}
s2 = {30, 40, 50, 60}
s3 = s1.union(s2)
print(s3) 

o/p:
{40, 10, 50, 20, 60, 30}

or

s1 = {10, 20, 30, 40}
s2 = {30, 40, 50, 60}
s3 = s1|s2           # here, we using symbol of union which pip '|'
print(s3) 

o/p:
{40, 10, 50, 20, 60, 30}


2. intersection() 
- Common element 


eg:-
s1 = {10, 20, 30, 40}
s2 = {30, 40, 50, 60}
s3 = s1.intersection(s2)  
s4 = s1 & s2
print(s3)
print(s4)

o/p:
{40, 30}
{40, 30}



3. difference() 
- 

s1 = {10, 20, 30, 40}
s2 = {30, 40, 50, 60}
s3 = s1.difference(s2) 
s4 = s1 - s2
s5 = s2 - s1
# element present in s1 but not in s2

print(s3)
print(s4)
print(s5)

ouput:
{10, 20}
{10, 20}
{50, 60}



4. symmetric_difference()
- The elements present inside S1, but not in S2 and
the elements present inside s2, but not in s1.
- So the elements present either in s1 or s2 but not in Both.
- So commonly excet the common elements, the remaining elemnts is nomthing but 
is symmetric_difference().


eg.

s1 = {10, 20, 30, 40}
s2 = {30, 40, 50, 60}
s3 = s1.symmetric_difference(s2) 
s4 = s1 ^ s2
s5 = s2 ^ s1
print(s3)
print(s4)
print(s5)


output:-

{10, 50, 20, 60}
{10, 50, 20, 60}
{10, 50, 20, 60}

------------------------------------------------------

Video 185: Aliasing, cloning and Comprehension of set


suppose I have one set.

s = {10, 20, 30}

if I use, s2 = s1

- So here, we are creating duplicate referance variable 
  for exesting object.
- This concept is nothing but Aliasing. 
- The process of creating duplicate referance variable is called 'Aliasing' concept.
 


- Problem with Aliasing concept:- 
1. If I perform any change, I add a new object, I remove existing object.
   Then what will be happend? 
   Those change will be reflacted to s2. 
2. Similarly, if I perform any change by using s2, 
   those changes will be reflacted to s1.

eg. 

s1 = {10, 20, 30}
s2 = s1

print(s1)       #o/p: {10, 20, 30}
print(s2)       #o/p: {10, 20, 30}

s1.pop()
print(s1)       #o/p: {20, 30}
print(s2)       #o/p: {20, 30}




- So how I can prevent this ? 

2. cloning()

- I want independent object, separate independent object.
  That process is called cloning.
- The process of creating completely new, new object with the same content is called cloning.

s1 = {10, 20, 30, 40}

s2 = s1.copy()

- So If you perform any change in s1 then it won't apply in s2 and vise varsa.

eg.

eg. 

s1 = {10, 20, 30}
s2 = s1

print(s1)       #o/p: {10, 20, 30}
print(s2)       #o/p: {10, 20, 30}

s1.pop()
print(s1)       #o/p: {20, 30}
print(s2)       #o/p: {10, 20, 30}


3.  Set Comprehension:

- Comprehension is not possible in Tuple.
- Comprehension is possible in List and set.


- From 1 to 5 I want squre value

eg.

s = {x*x for x in range(1,6)}
print(s)
print(type(s))

o/p:
{1, 4, 9, 16, 25}
<class 'set'>

eg.

s = [x*x for x in range(1,6)]
print(s)
print(type(s))

o/p:
[1, 4, 9, 16, 25]
<class 'list'>


eg3. 
# for given value I want power value. 

s = {2**x for x in range(1,6)}
print(s)

S1 = {x**x for x in range(1,6)}
print(1)


o/p:
{32, 2, 4, 8, 16}
{256, 1, 4, 3125, 27}


-------------------------------------------

Video 186:- Practice Program

1. WAP to eliminate duplicates present in the list?

Approach 1:

l = [10,10,20,30,10,20,30]
s = set(l)                  # Set will remove all duplicate elements
print(s)                    # output in type 'set'
l1 = list(s)                # Convert [set' into 'list'
print(l1)                   # output in type 'list'

ouput:-
{10, 20, 30}
[10, 20, 30]

Approach-2:

l = [10,10,20,30,10,20,30]
l1 = []
for x in l:
    if x not in l1:
        l1.append(x)
print(l1)

output:
[10, 20, 30]


2. WAP to print different vowels present in the given word?

Approach-1:

word = input("Enter any word to search for vowels: ")

s = set(word)   # convert word into set and unqiue value
print(s)
v = {'a','e','i','o','u'}

result = s & v   #s.intersection(v)
print('The Different Vowels Present in {} are:{}'.format(word, result))

output:-

{'i', 's', 'e', 'h', 'l', 'a', 'n', 'j', 'o'}
The Different Vowels Present in helloaashishjainneha are:{'a', 'i', 'o', 'e'}


If we want result in sorted form as list. 


Approach-2:

word = input("Enter any word to search for vowels: ")

s = set(word)   # convert word into set and unqiue value
print(f'Total unique word are {s}')
v = {'a','e','i','o','u'}

result = s & v   #s.intersection(v)
print('The Different Vowels Present in {} are:{}'.format(word, sorted(result)))


output:

Total unique word are {'j', 'h', 'i', 'n', 'e', 'a', 's'}
The Different 
Vowels Present in aashishjainneha are:['a', 'e', 'i']


