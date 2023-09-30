Video 148 :- 

# Till now we covered :
	* Langauge fundamental concept
	* Operatort Concept
	* Input Output Concept
	* Flow Control Concept
	* String Concept

# List Data Structure:-

	* In Langauge fundamental we briefly covered about "List Data Type"
	
x = 10  	# x is int type
y = 10.5 	# y is float type

Now x is single int type and y is single float type.

But, Now i want to group them together. 
like, 
	10,20,30,40
So I want to represent this group of number as a single entity.

If you want to represent your group of object as a single entity then we are required to go for collection related data type.  

In Collection Data Type :-
			List
			Tuple
			Set
			Dict


So when go for List Data Type?
-> When we want to represent your single entity where they are duplicate are allowed, the object can be duplicated and insertion order must be preserved so order is important and duplicates are allow, so if you want such type of requirement then you can go for "List Data Type".

Ex:
l = []		# empty List DT
l.append(10)	# now I want to append
1.append("neha")	
l.append(10)


print(l)	>>	[10, "neha", 10]
# so here in which order we add data in that form only it will show and 10 added 2 time because it allow duplicate.


# IMP point for List Data Type :-
	* Insertion Order Preserved
	* Duplicate Objects are allow
	* Hetrogenous Objects are allow
	* List is Dynamic (Add/Remove element)
	* Mutable (We can add/remove/replace element)
	* Represent List by using "Squal Bracket" []


l[0] = 77
print(l) 	>> [77, "neha", 10]

------------------------------------------------

Video 149: Creation of List Objects

1. Create Empty List Object

l = []
print(type(l))	>> Class 'list'


2. If we know data already 

l = [10,20,30,40]


3. Dynamic Input :-  I want to read directly from end user.

So we will going to use input function to take input from end user.
But bydefault input function is always going to return "str" type. 

I want to convert "str" type into "list" so we will use "eval" function.

l = input("Enter list:")
print(type(l))

o/p: Enter list: [10,20,30,40]
     < Class 'str'>

l = eval(input("Enter list:"))
print(type(l))
print(l)

o/p: Enter list: [10,20,30,40]
     < Class 'list'>
      [10,20,30,40]


4. By using list() :-
		* Convert str into list
		* Range of value into list type
		* set/tuple into list type

To convert other data type into list then we need to use list() function.

eg1:-

l = list('neha')	# It can be str | range | tuple
print(l) 	

>> ['n' , 'e' , 'h' , 'a']

eg2:-

l = list(range(0,10,2))  # from o to 9(being to end-1) with 2 increment. 
print(l)

>> [0 , 2 , 4 , 6 , 8]


5. Split() funciton

* How to create object for given string?
* I want to split the string object into mulitple string accourding to seperator. 
* Split method return type is always "List type" only. 

eg:- 

s = 'Learning Python is easy'
l = s.split()
print(l)

>> ['Learning' , 'Python' , 'is' , 'easy']

-----------------------------------------------------------------

video 150:- Accessing element of list 

1. By using index 
2. By using slice operator



1. By using index :-

l = [10,20,30,40]

         -4 -3 -2 -1
	|10|20|30|40|
Index: 	 0   1  2  3

print(l[0])	>> 10
print(l[-1] 	>> 40
print(l[100])	>> IndexError


2. By using slice operator:-

list = l[begin:end:step]

* Step value can be +ve or -ve but it can't be zero
* If step value is +ve then we need to move forward direciton 
  (form begin to end-1)
* It step value is -ve then we need to move backward direction
  (from begin to end+1)


Note:-

1. In forward direction if end value is 0 then result is always empty.
2. In backward direction if end value is -1 then result is always empty.


3. Either forward direction or backward direction, we can take both +ve and -ve values for begin and end index

In forward direction:
default value for being : 0
default value for end: len(list)

In backward direction:
default value for begin : -1
default value for end : (len(list+1)


eg. 

n = [10,20,30,40,50,60,70,80,90,100]


0) print(n[2:7])   => 30, 40, 50, 60, 70
1) print(n[2:7:2]) => 30, 50, 70
2) print(n[4::2])  => 50, 70, 90
3) print(n[3:7])   => 40, 50, 60, 70
4) print(n[8:2:-2])=> 90, 70, 50, 30
      from 8 to (2+1=3) in the backward direction and step value is -2
5) print(n[4:100]) => 50, 60, 70, 80, 90, 100
6) print(n[4:0:2]) => empty
       end value is 0 in forward direction so will get empty list.
7) print(n[::1]) => will get full list from 10 to 100
8) print(n[::-1]) => In backward direction from 100 to 10. 


-----------------------------------------------------------------

Video 151: Traversing Elements of the List and Applications

* Traversing means visiting. 
* I want to know all / i want to access all elements of the list. 
* Can you print each n every element present in the list. 
* Can you print only even number and so on. 
* How you can visit / How you can Travers all elements of the list in sequential order. 


1. By using while loop:

l = [0,1,2,3,4,5,6,7,8,9,10] 
i = 0
while i<len(l):
	print(l[i])
	i += 1

D:\Python_classes>py test.py
0
1
2
3
4
5
6
7
8
9
10


2)By using for Loop:

 n=[0,1,2,3,4,5,6,7,8,9,10]
 for n1 in n:
 	print(n1) 


D:\Python_classes>py test.py
0
1
2
3
4
5
6
7
8
9
10 



3)To display only Even Numbers:
 n=[0,1,2,3,4,5,6,7,8,9,10]
 for n1 in n:
 	if n1%2==0:
 		print(n1) 


D:\Python_classes>py test.py
0
2
4
6
8
10


4)To display Elements by Index wise:

Want to display +ve and -ve index for the given element. 
len(l) = 6
-ve index = +ve index - len(l)


 l = ["A","B","C"]
 x = len(l)
 for i in range(x):
   print(l[i],"is available at positive index: ",i,"and at negative index: ",i-x)

D:\Python_classes>py test.py
A is available at positive index: 0 and at negative index: -3
B is available at positive index: 1 and at negative index: -2
C is available at positive index: 2 and at negative index: -1 

eg2:- By using while loop

l = [10,20,30,40,50,60]

i = 0

while i < len(l):
  print(f'The element present at +ve index:{i} and at -ve index:{i-len(l)} is : {l[i]}')
   i = i+1


-------------------------------------------------------------------------

video 152:- Mathematical Operators for list


1. Concatenation Operator (+)
2. Repetition Operator (*)


1. Concatenation Operator (+)

* We can concatenate 2 list into a single list.
* Both argument should be list type only.

eg1:-

l1 = [10, 20, 30]
l2 = [40, 50, 60]
l3 = l1 + l2

print(l3)

>> [10, 20, 30, 40, 50, 60]


eg2:- List with int => Invalid

l1 = [10, 20, 30]
l2 = l1 + 40
print(l2)

>> TypeError : can only cancatenate list (not "int") to list
 

eg3:- List with List => Valid

l1 = [10, 20, 30]
l2 = l1 + [40]
print(l2)

>> [10, 20, 30, 40]


eg4:- List with Tuple => Invalid

l1 = [10, 20, 30]
l2 = l1 + (40,50,60)
print(l2)

>> TypeError : can only cancatenate list (not "tuple") to list
 


2. Repetition Operator (*)

* One argument should be list and other must be "Int" type only. 
* Instead of Int if you take float or any other data type then will get TypeError.

eg1:- List with Int => Valid

l1 = []10, 20]
l2 = l1 * 2
print(l2)

>> [10, 20, 10, 20]
 
eg2:- List with any other DT => Invalid

l1 = []10, 20]
l2 = l1 * 2.0
print(l2)

>> TypeError: Can't multiple sequence by non-int of type 'float'

eg3:- List with List also => Invalid

l1 = []10, 20]
l2 = l1 * l1
print(l2)

>> TypeError: Can't multiple sequence by non-int of type 'list'



some other example:

l1 = [10, 20]
l2 = [30, 40]
l3 = l1 + l2     >> l3 = [10, 20, 30, 40]
l4 = l3 * 3      
print(l4)

>> [10, 20, 30, 40, 10, 20, 30, 40, 10, 20, 30, 40]


================================================================

Video 153:- Equality, Relational and Membership Operators for list

1. equal  	=>	==  
2. not-equal 	=> 	!=


1. equal  	=>	==  

* The number of elements must be same.
* The Order of elements must be same.
* The content must be same including case

eg:-

l1	=	['Dog', 'Cat', 'Rat']
l2	=	['Dog', 'Cat', 'Rat']
l3	=	['DOG', 'CAT', 'RAT']
l4	=	['Cat', 'Rat', 'Dog']

print(l1 == l2) =>	True
print(l1 == l3)	=>	False
print(l1 == l3)	=>	False
print(l1 != l4)	=>	True


* Relational Operators *

<, <=, >, >=
* It will compare 1st Element with 1st element. 
* If 1st elements in both list are same then only it will got to next element and so on.

eg1:-

l1 = [10, 20, 30, 40]
l2 = [50, 60]

print(l1 <  l2)	=> True		# It will compare 10 with 50
print(l1 <= l2)	=> True		
print(l1 >  l2) => False
print(l1 >= l2) => False

eg2:-
l1 = [10, 20, 30, 40]
l2 = [5, 60]

print(l1 <  l2)	=> False		# It will compare 10 with 5
print(l1 <= l2)	=> False		
print(l1 >  l2) => True
print(l1 >= l2) => True

eg3:-

l1 = [10, 20, 30]
l2 = [10, 20, 6]

print(l1 <  l2)	=> False		
# It will compare 10 with 10, then 20 with 20 and at last 30 with 6
print(l1 <= l2)	=> False		
print(l1 >  l2) => True
print(l1 >= l2) => True


eg4:-

l1 = [10, 20, 30]
l2 = [10, 20, 30, 40, 50, 60]


print(l1 <  l2)	=> True		# Here lenghth of L2 is greater 
print(l1 <= l2)	=> True		
print(l1 >  l2) => False
print(l1 >= l2) => False


eg5:-

l1 = ['Ramba' , 'Ramya']
l2 = ['Raja' , 'Sunny']

print(l1 > l2) >> True

* Here from 'Ramba' and 'Raja' 1st 'R' is same then 'a' is same then 'm' is greater then 'j'.


 
* Membership Operator:-

1. in
2. not in


l1 = [10,20,30,40]

print(10 in l1) 	=> True
print(50 not in l1)	=> True
print(70 in l1) 	=> False

With this operator we can check weather the given element is member of list or not by using "Membership Operator".

=========================================================================

video 154: Important Methods and Funcitons for List: len(), count() and index().

* Which Methods and functions are applicable for list.

* Python in-build funciton and object specific methods 

* Example of Python in-build 

l = [10, 20, 30]
len(l) => 3

'len'
 => Python in-build function
 => This genral function is applicable for list, tuple, set
 => Here we are not defining any object for len 

* Few more Python in-build function:-
print and sorted(l)


* Example of object specific methods 

l = []  	# empty list object
l.append(10)	#you are calling append method on list object.

* So this append method is list specific method it is not python in-build funciton.
* append is applicable only for the list
* This method is available in the correspoinding list class



"Count"	Method
If you want to know specify the element how many times printing the list.


l = [10,20,10,20,30,20,40]
print(l.count(10))	=> 2
print(l.count(20))	=> 3
print(l.count(50))	=> 0



"index()" Method
It Return that index of 1st occurrence of specify element.

l = [1,2,1,2,3,4]

#Can you tell 1 available or not if avaialble then at what index it is available.

print(l.index(1))   => 0 # It returns index of 1st occurrence of 1
print(l.index(2))   => 1


* Small LoopHole 

# You need to check element is available or not if it is available then only use index method.
# If element is not present in given list then it will give error.

print(l.index(5))  => ValueError : 5 is not in list

# So how will you check element present in list or not, by using "Membership Operator"


code:
l = [1,2,2,2,3,3]
x = int(input("Enter element to find index: "))
if x in l:
	print(f'{x} present at index: {l.index(x)}')
else:
	print(x, 'not available in the list')


output:- 

Enter element to find index:2
2 present at index : 1

Enter element to find index:5
5 not available in the list

Summary:- 

1. len()
Returns the number of element present in the list.

2. Count()
Returns the number of occurrencecs of specified element present in the list

3. index()
Return index of the 1st occurrence of the specified item.


--------------------------------------------------------------

Video 155 : Important Methods and Functions for List

Methos:- append() and insert()

* We will se how to manipulate the list:
	* How you can add/remove element from list


1. append():

To Add element at end of the list. 

l = []  # empty list
l.append(10) # so in list there is no previous contain so 10 is added in l
l.append(20) # this 20 will be added after 10
l.append(30) # this 30 will be added after 30

print(l) 	=> [10, 20, 30]
 
Code:

Q:- Write a number in last between 1 to 100 which are devisiable by 10

# Add numbers which are divisible by 10 from 1 to 100.

l = []
for x in range(1,101):
	if x % 10 == 0:
	 l.append(x)
print(l)

output: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

++++++++++++++++++++++++++++=
2. insert():
To add element at specified index position.

Syntax:

l.insert(index, element)


l = [10,20,30,40]

So here, If we use append it will add 50 at last so I want to add 50 at index-1 


list:- 	10, 20, 30, 40
index:-  0   1   2   3

l.insert(1, 50) 

# now this 50 element will be added at 1 index and all remaining element move to the 1 sell right hand side.

# it not going to replace 20 with 50.

print(l) => [10, 50, 20, 30, 40]


Now, here is a small twist is there:- 

l = [10,20,30,40]

What are the valid index for this list. 

-ve index	-4  -3  -2  -1
		10, 20, 30, 40
+ve index	0    1   2  3


l.insert(100, 7777) 


# now if someone say that can add 7777 at index 100 ? Do you think its possible ? 

l.insert(-100, 9999)

# what will be the output for this also ? 

Rule:
1. If speficied index is greater then max index then that element will be add at last automatically. 

here max index is 3 so 100 is greater then 3 hence 7777 will be added at last position.

2. If speficied index is less then minium index then that element will be add at 1st position.

Here min index is 0 so -100 is less then 0 then 9999 will be added 1st 0 index or 1st position.


Code:- 

l = [10,20,30,40]

l.insert(100, 7777) 

l.insert(-100, 9999)

print(l) => [9999, 10, 20, 30, 40, 7777]



Q: So u have to understand diff between append and insert methods.


----------------------------------------------------------------

Video 156:- Important Methods and function for list : extend()

In last class we learn about append() and insert() method and now we will learn about one more method to add element in list.

3. extend():
To add all(multiple) elements of given sequence to the list.

syntax:

l1.extend(l2)
# all elements present in l2 will be added to l1.

* Take very special care:-

order1 = ['dosa', 'lassi', 'vada']
order2 = ['South', 'North', 'Center']
 
# All elements in order2, I want to add in Order1.

order1.extend(order2)

print(order1) >> ['dosa', 'lassi', 'vada', 'South', 'North', 'Center']

* append() and insert() => To add single element in the list.
* extend()		=> To add multiple elements in the list.


* LoopHole in extend() method:-

 
Eg1:

l1=[10,20,30]
l2=[40,50]
l1.append(l2)

# Here, l2 treat as a single element only.

print(l1)      >> [10, 20, 30, [40, 50]]
print(len(l1)) >> 4


Eg2:


l1=[10,20,30]
l2=[40,50]
l1.extend(l2)

# Here, all element l2 will be add to l1.

print(l1)      >> [10, 20, 30, 40, 50]
print(len(l1)) >> 5


Eg3:-

l1=[10,20,30]
l1.append('ABC')

print(l1)	>> [10, 20, 30, 'ABC']
print(len(l1))	>> 4

Eg4:-

l1=[10,20,30]
l1.extend('ABC')

print(l1)	>> [10, 20, 30, 'A', 'B', 'C']
print(len(l1))	>> 6

*** Summary ***

** Manipulation Elements of List:

1. append() 
To add item at the end of the list.

2. insert()
To insert item at the specified index

3. extend()
To add all elements of the given sequence to the list.

----------------------------------------------------------------------

video 157:- Important Methods and Functions for the list : remove()


* How can you remove elements from list, so for that we have 3 methods:-
1. remove()
2. pop()
3. clear()


1. remove()

Syntax:-
l.remove(x)


* LoopHole
- If specified element present multiple times then only 1st occurence will be removed.
- If specified element not available, we will get "ValueError".

- Before calling remove method compulsory required to check whether this segment is already available or not, if it is avaiable then only remove this one.


l = [10, 20, 10, 20, 40]
l.remove(40)

print(l1) >>   [10, 20, 10, 20]

l.remove(10)

print(l1) >> [20,10,20]


l.remove(50)  >> ValueError : List.remove(x) : x not in list


* SO how to handel the ValueError in code:

Eg:

l = [1, 2, 3 4, 5, 6]
print('Before Removal:', l)
x = int(input("Enter value to remove:")
if x in l:
	l.remove(x)
	print("After Removal: ", l)
else:
	print(x, "Not avaiable in the list")

output1: test.py

Before Removal: [1,2,3,4,5,6]
Enter value to remove: 4
After Removal: [1,2,3,5,6]


output2: test.py

Before Removal: [1,2,3,4,5,6]
Enter value to remove: 3
After Removal: [1,2,4,5,6]

output3: test.py

Before Removal: [1,2,3,4,5,6]
Enter value to remove: 7
7 Not avaiable in the list

+++++++++++++++

* How to remove all occurrences ? 
-> For this readymade method not avaiable so we need to wirte a code.


code:

l = [1, 1, 1, 1, 2, 2, 2, 3, 3]
print("Before Removal: ", l)
x = int(input("Enter element to remove:")
while True:
	if x in l:
		l.remove(x)
	else:
	   break

print("After Removal: ", l)

output1:

Before Removal: [1, 1, 1, 1, 2, 2, 2, 3, 3]
Enter element to remove: 1
After Removal: [2, 2, 2, 3, 3]


output2:

Before Removal: [1, 1, 1, 1, 2, 2, 2, 3, 3]
Enter element to remove: 2
After Removal: [1, 1, 1, 1, 3, 3]


output3:

Before Removal: [1, 1, 1, 1, 2, 2, 2, 3, 3]
Enter element to remove: 5
After Removal: [1, 1, 1, 1, 2, 2, 2, 3, 3]

----------------------------------------------------------------

Video 158: Method n function continue:pop() and clear()

2.1. pop():  => Version 1

syntax:
l.pop()   # No need to pass any argument

* It will remove the last element of given list.


eg.

l = [10, 20, 30]
print(l.pop())   >> 30
print(l)	 >> [10, 20]


print(l.pop()) >> 20  # Now we are removing 20
print(l.pop()) >> 10  # Now we are removing 10  
print(l)       >> []  # Now list is empty

# Now if we are trying to apply pop() method on empty list, then will get IndexError. 

print(l.pop()) >> IndexError: pop from empyu list.
 
++++++++++++++++++++++++++++++++

2.2. pop(x)  => Version 2
 
syntax:
l.pop(x)	=> Passing argument as index value

Can we remove element at some specific location/Index ?

So again we need to use 'pop(x)' method with argument.

It will remove and return the element present at specified index. 

l 	= [10,20,30,40]
# index	=  0   1  2  3

print(l.pop(1))  >> 20
print(l)	>> [10,30,40]

print(l.pop(100)) >> IndexError: pop index out of range


+++++++++++++++++

Q. Difference between remove() and pop() methods.

    remove()				     pop()

1. l.remove(x)				1. l.pop()
  To remove specified element		 To remove and return last element
					l.pop(index)
					 To remove and return elemnt 
					  present at specified index.

2. If the list is empty then we		2. If the list is empty then we 
   will get ValueError. 		   will get IndexError.
 			

3. The return value is None and won't	3. It returns removed element.
return removed element.

+++++++++++++++++++++

3. Clear()

Till now remove and pop method is use to remove only 1 element, but I want to remove all element present inside list then we will use 'clear()'.


l = [10,20,30,40]
l.clear()
print(l)	>> []  #It will clear all element so will get empty list.

+++++++++++++++++++++++++++++++++++

*** Manipulating Elements of list:

1. remove()
To remove specified element from the list.

2. pop()
To remove and return last element rom the list.

3. pop(index)
To remove and return element present at specified index from the list.

4. clear()
To remove all elements from the list.

+++++++++++++++++++++++++++++++++

List :

To increase size/To add elements:- 
	append(), insert(), extend()

To decrease size/To remove elements:-
	remove(), pop(), clear()
 
So with all this methods we can increase or decrease size of the list, hence 'List' is dynamic in nature and also we can change contain of the list so list is also 'Mutable' in nature.

---------------------------------------------

video 159:-  Ordeting Elements of List: reverse() and reversed()

1. Reversing order:


l.reverse()
- So whatever element present in the list l, the order will be reversed.


l = [10, 20, 30, 40]

print('Before Reversal:', l)	##	[10, 20, 30, 40]
l.reverse()
print('After Reversal:', l)	##	[40, 30, 20, 10]

output:-
Before Reversal:	[10, 20, 30, 40]
After Reversal:		[40, 30, 20, 10]

* In the existing list only the elements will be reverse, it will not going to create a new object in the existing list only the element will be reversed.

* It is a list specific method.


++++++++++++

reverse()				reversed() => General Method
- applicable for list			- It python in-build functions
					  which is applicable for any DT.

l = [10, 20, 30, 40]			l = [10, 20, 30, 40]
l.reverse()				r = reversed(l)
print(l)  # [40, 30, 20, 10]		l1 = list(r)
					print(l1) # [40, 30, 20, 10]
					print(l)  # [10, 20, 30, 40]
					
It will not create			It will create a new reversed
any new object. 			iterator object and that 
					we are converting into list.

+++++++++++++++++

Suppose if we want to reverse any given string then we cannot use reverse() method because it is only applicable to 'List', but stil we trying to reverse string using reverse() method then we will get error.

eg.

s = 'neha'
s.reverse() >> AttributeError: 'str' object has no attibute 'reverse'

eg2:

s = 'neha'
r = reversed(s)
for x in r:
 	print(x)

-------------------------------------------------------------------

Video 160 : Ordering Elements of List: sort() and sorted()


2. Sorting elements of list.

List contain 'sort()' method is available 
	
l.sort()

How sorting will going to happend ? 
-> According to default shorting order elements will be sorted.

Q. What is natural sorting order?
-> numbers  - Ascending order
   string   - Alpabetically order


eg1:

l = [20, 5, 15, 0, 10]
print('Before sorting:', l)		# [20, 5, 15, 0, 10]
l.sort()
print('After sorting:', l)		# [0, 5, 10, 15, 20]


output:

Before sorting:	[20, 5, 15, 0, 10]
After sorting:	[0, 5, 10, 15, 20]


eg2:- 

l = ['Banana', 'Cat', 'Apple']
print('Before sorting:', l)		# ['Banana', 'Cat', 'Apple']
l.sort()
print('After sorting:', l)		# ['Apple', 'Banana', 'Cat']


output:

Before sorting:	['Banana', 'Cat', 'Apple']
After sorting:	['Apple', 'Banana', 'Cat']



eg3:

l = [20, 5, 15, 0, 10]

Now I want this is reverse of natural sorting order/deassending order, what is the way ? 

1. Longer way is :

l = [20, 5, 15, 0, 10]
l.sort()
l.reverse()
print(l)	>>	[20, 15, 10, 5, 0]


2. Easy way is :

eg1:-

l = [20, 5, 15, 0, 10]
print('Before Sorting:', l)
l.sort(reverse=True)		
# here, reverse is a key-word argument, we will learn this in future.
print('After Sorting:', l)

output:-
Before Sorting:	[20, 5, 15, 0, 10]
After Sorting:	[20, 15, 10, 5, 0]

eg2:-

l = [20, 5, 15, 0, 10]
print('Before Sorting:', l)
l.sort(reverse=False)		# It will sort but not do reverse
print('After Sorting:', l)

output:-
Before Sorting:	[20, 5, 15, 0, 10]
After Sorting:	[0, 5, 10, 15, 20]


eg3:

l = ['Banana', 'Cat', 'Apple']
l.sort(reverse=True)
print(l) 	>>	['Cat','Banana','Apple']

eg4:

l = ['Banana', 'Cat', 'Apple']
print('Before Sorting:', l)
l.sort(reverse=True)		
# here, reverse is a key-word argument, we will learn this in future.
print('After Sorting:', l)

output:-
Before Sorting:	['Banana', 'Cat', 'Apple']
After Sorting:	['Cat','Banana','Apple']


eg5: Hetrogenous Object

l = [40, 20, 'B', 'A']
l.sort()

l = [40, 20, 'B', 'A']
print('Before Sorting:', l)
l.sort(reverse=True)		
print('After Sorting:', l)

Output:
TypeError: '<' not supported between instances of 'str' and 'int'	


Note:
If a list containing 'Hetrogenous' elements then you cannot perform sorting.

Sorting only support 'Homogenous' elements


sort()					sorted()
List specific method.			Python in-build function

l = [20, 10, 5]				l1 = [20, 10, 5]
l.sort()				l2 = sorted(l1)
# in same list all			# Here, new list l1 is created.
element will be sorted.			print(l1) # [20, 10, 5]
					print(l2) # [5, 10, 20]
				
					It is applicable for all DT.

----------------------------------------------------------

video 161: Aliasing and Cloning of List Objects


Alias : Duplicate name 

l1 = [10, 20, 30, 40]

l2 = l1

# For existing list object a new referance variable will be added.  

* Just we are creating duplicate referance variable for the existing object. 
* The process of creating duplicate referance variable is called 'Alias'

* Another name for the existing object.
* Object 1(10,20,30,40) and name 2(l1 and l2)


* Problem/LoopHole
- How many RF is there ? 2 so if by using 1 RF if we change contain or element then automatically the change will be reflected other referance variable. 
 
eg:

l1 = [10, 20, 30, 40]

l2 = l1

l1[1] = 7777  # In L1 index 1 - 20 will be change with 7777

print(id(l1))
print(id(l2))
print(l1 is l2) >> True
print(l1)	>> [10, 7777, 30, 40]
print(l2)	>> [10, 7777, 30, 40]

* Solutions:-
- If you create duplicate objects but not duplicate referance variable(RV)
- Process of creating duplicate object in list is known as 'Cloning' concepts.

* Cloning :-
- Process of creating duplicate object 
- Cloning can we done in 2 ways:-
1. Slice Operator
2. Copy() - Method


1. Slice Operator

eg:-
l1 = [10, 20, 30, 40]  # here, l1 = [10, 20, 30, 40]
l2 = l1[::]	       # here, l2 = [10, 20, 30, 40]
# ID of both l1 and l2 will be different in this case.
print(id(l1)) >> 1598088
print(id(l2)) >> 1598152
print(l1 is l2) >> Flase

- So new object got created. 
- Now, using l1 if we perform any change then it won't be reflact to l2.


eg.

l1 = [10, 20, 30, 40]
l2 = l1[::]

l1[1] = 7777
print('L1:', l1)  >> L1: [10, 7777, 30, 40]
print('L2:', l2)  >> L2: [10, 20, 30, 40]

2. copy() - Method

eg:-
l1 = [10, 20, 30, 40]  # here, l1 = [10, 20, 30, 40]
l2 = l1.copy()	       
# ID of both l1 and l2 will be different in this case.
print(id(l1)) >> 1598088
print(id(l2)) >> 1598152
print(l1 is l2) >> Flase

In this also a new object is created and remaining process is same.





----------------------------------------------------

Video 162: Nested Lists

- List inside a list
- How to create Nested Lists

eg.

	l = [10, 20, [30, 40]]
# Element =   1   2     3
# Index   =   0   1     2

# So total 3 element insted of 4 because [30, 40] are consider as singal element.


print(l[0])	>>	10	
print(l[1])	>>	20
print(l[2])	>>	[30, 40]

# Now I want to access only 30 element.
# How to access Nested element:-
# With in Index 2 we have 2 index 0 is 30 and 1 is 40

print(l[2][0])  >>  30  
print(l[2][1])  >>  40  

# This nothing but multi-dementional array.

* Nested list as Matrix


Code1:-
# I want to print this elements, element by element(row by row)

l = [[10,20,30],[40,50,60],[70,80,90]]

print(l)  >> [10,20,30],[40,50,60],[70,80,90]]
print('Elements Row wise: ')
for x in l:
	print(x)

output:-

[10, 20, 30]
[40, 50, 60]
[70, 80, 90]




Code2:-
# If i want to print in matrix formate

l = [[10,20,30],[40,50,60],[70,80,90]]
print(l) 
print('Element in Matrix style: ")
for x in l:	# x talk about rows
   for y in x:	# y talk about element in each row
      print(y, end = ' ')
   print()

output:

10 20 30
40 50 60
70 80 90

Code3:- 

Combined both code1 n code2:-


l = [[10,20,30],[40,50,60],[70,80,90]]
print(l)
print('Elements Row wise: ')
for x in l:
	print(x)

print('Element in Matrix style: ")

for x in l:	# x talk about rows
   for y in x:	# y talk about element in each row
      print(y, end = ' ')
   print()

output:
Elements Row wise:
[10, 20, 30]
[40, 50, 60]
[70, 80, 90]
Element in Matrix style:
10 20 30
40 50 60
70 80 90

----------------------------------------------------------------

*** Most valuable concept ***

video 163: List Comprehension and Application Part-1

- I want to create list in very compact(Less code)
- I want to create List from any iterable objects based on some condition.
- It is very easy way of creating 'List Object'.

eg.

l = [1,2,3,4,5,6,7,8,9,10]

How will you create this type of list ?

Normal way1:- 

l = []
for i in range(1,11):
    l.append(i)
print(l)


output:

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


Comprehension way2:-

syntax:-
l = [expression for each element in sequence]

l = [express for each-element in sequence if condition]
explain :- 
l = [for (each-element) in the given (sequence) if this (condition) satisfied then take this (expression)]
 into the list and with that can you create list.


# for x in range, x expression we need to take
>>> l = [x for x in range(1,11)]  
>>> print(l)
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


* Now can create list object from 1 to 10 number square value

# Creation of list with square values from 1 to 10

l = [x*x for x in range(1,11)]  
print(l)

output:-
[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]


# x value is 1 to 5 and take 2 power of each. 

l = [2**x for x in range(1,6)]
print(l)

output:
[2, 4, 8, 16, 32]


# create list from 1 to 100 which are divisiable by 10

l = [x for x in range(1,101) if x%10==0]
print(l)

output:

[10, 20, 30, 40, 50, 60, 70, 80, 90, 100]


--------------------------------------------------------

video 164: List Comprehension and Application Part-2

l1 = [10,20,30,40]
l2 = [30,40,50,60]

# create a new list with elements present in l1 but not in l2


l3 = [x for x in l1 if x not in l2]
print(l)


output:- 

[10, 20]


# create with elements in both l1 and l2 - common element

l1 = [10,20,30,40]
l2 = [30,40,50,60]

l4 = [x for x in l1 if x in l2]

print(l4)

output:

[30, 40]

# with given input take only 1st word

input = ['Aashish', 'Neha', 'Pawan', 'Sunny']
output = ['A','N','P','S']


code:

l = ['Aashish', 'Neha', 'Pawan', 'Sunny']

l1 = [word[0] for word in l]
print(l1)

output:-
['A', 'N', 'P', 'S']



# List comprenension:

l = 'the quick brown for jumps over the lazy day'

words = l.split()
print(words)

output:-

['the', 'quick', 'brown', 'for', 'jumps', 'over', 'the', 'lazy', 'day']


#eg:

s = 'the quick brown for jumps over the lazy day'
words = s.split()

l = [[word.upper(), len(word)] for word in words]
print(l)

output:-

[['THE', 3], ['QUICK', 5], ['BROWN', 5], ['FOR', 3], ['JUMPS', 5], ['OVER', 4], ['THE', 3], ['LAZY', 4], ['DAY', 3]]

--------------------------------------------

Video 165: Program to display unique vowels present in the given  words?

# what are the vowels? 

vowels = ['a','e','i','o','u']
word = input("Enter Any word to search for vowels: ")
result = []
for ch in word:
    if ch in word:
        if ch not in result:
            result.append(ch)

print(result)
print('The Number of Unique Vowels:', len(result))


output:-
Enter Any word to search for vowels: aashishjain
['a', 's', 'h', 'i', 'j', 'n']


Code2:

vowels = ['a','e','i','o','u']
word = input("Enter Any word to search for vowels: ")
result = []
for ch in vowels:
    if ch in word:
            result.append(ch)

print(result)
print('The Number of Unique Vowels:', len(result))


output:-

Enter Any word to search for vowels: aashishn
ehaharishramesh
['a', 'e', 'i']
The Number of Unique Vowels: 3

##Now with easy method:-

code3:- 

vowels = ['a','e','i','o','u']
word = input("Enter Any word to search for vowels: ")

result = [ch for ch in vowels if ch in word]

print(result)
print('The Number of Unique Vowels:', len(result))

output:-
Enter Any word to search for vowels: aeioudaahij
['a', 'e', 'i', 'o', 'u']
The Number of Unique Vowels: 5