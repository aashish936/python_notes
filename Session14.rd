
Video 187:- Dictionary Data Structure 

We can use List,Tuple and Set to represent a group of individual objects as a single entity. 

If we want to represent a group of objects as key-value pairs then we should go for 

Dictionary. 

  

Eg: 

rollno----name 

phone number--address 

ipaddress---domain name 

  

Duplicate keys are not allowed but values can be duplicated. 

Hetrogeneous objects are allowed for both key and values. 

insertion order is not preserved 

Dictionaries are mutable 

Dictionaries are dynamic 

indexing and slicing concepts are not applicable 

  

Note: In C++ and Java Dictionaries are known as "Map" where as in Perl and Ruby it is 

known as "Hash" 

  

------------------------------------------------------------------------------------------------ 
Video 188: *** How to create Dictionary? *** 

d={} or d=dict() 

  

we are creating empty dictionary. We can add entries as follows 

  

d[100]="aashish" 

d[200]="neha" 

d[300]="shiva" 

print(d) #{100: 'aashish', 200: 'neha', 300: 'shiva'} 

  

If we know data in advance then we can create dictionary as follows 

  

d={100:'aashish' ,200:'neha', 300:'shiva'} 

d={key:value, key:value} 

  

------------------------------------------------------------------------------------------------ 
Video 189: *** How to access data from the dictionary? *** 

We can access data by using keys. 

d={100:'aashish' ,200:'neha', 300:'shiva'} 

print(d[100]) #aashish 

print(d[300]) #shiva 

  

If the specified key is not available then we will get KeyError 

  

print(d[400]) # KeyError: 400 

  

We can prevent this by checking whether key is already available or not by using has_key() function or by using in operator. 

  

d.has_key(400) ==> returns 1 if key is available otherwise returns 0 

  

But has_key() function is available only in Python 2 but not in Python 3.  

Hence compulsory we have to use in operator. 

  

if 400 in d: 

print(d[400]) 

  

---------------------------------------------------------------------------------------------- 
Video 190:- Q. Write a program to enter name and percentage marks in a dictionary and 

display information on the screen 

1) rec={} 

2) n=int(input("Enter number of students: ")) 

3) i=1 

4) while i <=n: 

5) name=input("Enter Student Name: ") 

6) marks=input("Enter % of Marks of Student: ") 

7) rec[name]=marks 

8) i=i+1 

9) print("Name of Student","\t","% of marks") 

10) for x in rec: 

11) print("\t",x,"\t\t",rec[x]) 

12) 

13) Output 

14) D:\Python_classes>py test.py 

15) Enter number of students: 3 

16) Enter Student Name: aashish 

17) Enter % of Marks of Student: 60% 

18) Enter Student Name: neha 

19) Enter % of Marks of Student: 70% 

20) Enter Student Name: shiva 

21) Enter % of Marks of Student: 80% 

22) Name of Student % of marks 

23) aashish 60% 

24) neha 70 % 

25) shiva 80% 

  

---------------------------------------------------------------------- 

Video 191:- How to update dictionaries? 

d[key]=value 

If the key is not available then a new entry will be added to the dictionary with the 
specified key-value pair 

  

If the key is already available then old value will be replaced with new value. 

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

print(d) 

d[400]="pavan" 

print(d) 

d[100]="sunny" 

print(d) 

  

Output 

{100: 'aashish', 200: 'neha', 300: 'shiva'} 

{100: 'aashish', 200: 'neha', 300: 'shiva', 400: 'pavan'} 

{100: 'sunny', 200: 'neha', 300: 'shiva', 400: 'pavan'} 

  

---------------------------------------------- 

How to delete elements from dictionary? 

  

del d[key] 

  

It deletes entry associated with the specified key. 

If the key is not available then we will get KeyError 

  

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

print(d) 

del d[100] 

print(d) 

del d[400] 

  

Output 

{100: 'aashish', 200: 'neha', 300: 'shiva'} 

{200: 'neha', 300: 'shiva'} 

KeyError: 400 

    

*** d.clear() *** 

To remove all entries from the dictionary 

Eg: 

  

d={100:"aashish",200:"neha",300:"shiva"} 

print(d) 

d.clear() 

print(d) 

  

Output 

{100: 'aashish', 200: 'neha', 300: 'shiva'} 

{} 

  

  

*** del d *** 

To delete total dictionary.Now we cannot access d 

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

print(d) 

del d 

print(d) 

  

  

Output 

{100: 'aashish', 200: 'neha', 300: 'shiva'} 

NameError: name 'd' is not defined 

  

  

-------------------------------------------------------- 
video 192 to video 196:- Important functions of dictionary: 

1. dict(): 

  

To create a dictionary 

  

d=dict() ===>It creates empty dictionary 

d=dict({100:"aashish",200:"neha"}) ==>It creates dictionary with specified elements 

d=dict([(100,"aashish"),(200,"shiva"),(300,"neha")])==>It creates dictionary with the given 

list of tuple elements 

  

2. len() 

Returns the number of items in the dictionary 

  

3. clear(): 

To remove all elements from the dictionary 

  

4. get(): 

To get the value associated with the key 

  

*** d.get(key) *** 

If the key is available then returns the corresponding value otherwise returns None.It 

wont raise any error. 

  

d.get(key,defaultvalue) 

If the key is available then returns the corresponding value otherwise returns default 

value. 

  

  

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

print(d[100]) ==>aashish 

print(d[400]) ==>KeyError:400 

print(d.get(100)) ==aashish 

print(d.get(400)) ==>None 

print(d.get(100,"Guest")) ==aashish 

print(d.get(400,"Guest")) ==>Guest  

-------------------------------------------------------- 

3. pop(): 

    

d.pop(key) 

  

It removes the entry associated with the specified key and returns the corresponding 

value. 

If the specified key is not available then we will get KeyError. 

  

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

print(d.pop(100)) 

print(d) 

print(d.pop(400)) 

  

Output:- 

aashish 

{200: 'neha', 300: 'shiva'} 

KeyError: 400 

  

--------------------------------------------------------- 

4. popitem(): 

    

It removes an arbitrary item(key-value) from the dictionaty and returns it. 

  

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

print(d) 

print(d.popitem()) 

print(d) 

  

Output 

{100: 'aashish', 200: 'neha', 300: 'shiva'} 

(300, 'shiva') 

{100: 'aashish', 200: 'neha'} 

  

  

If the dictionary is empty then we will get KeyError 

d={} 

print(d.popitem()) ==>KeyError: 'popitem(): dictionary is empty' 

  

----------------------------------------- 

  

5. keys(): 

It returns all keys associated eith dictionary 

  

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

print(d.keys()) 

for k in d.keys(): 

    print(k) 

  

Output 

dict_keys([100, 200, 300]) 

100 

200 

300 

  

  

-------------------------------------- 

  

6. values(): 

It returns all values associated with the dictionary 

  

  

Eg: 

  

d={100:"aashish",200:"neha",300:"shiva"} 

print(d.values()) 

for v in d.values(): 

    print(v) 

  

Output 

dict_values(['aashish', 'neha', 'shiva']) 

aashish 

neha 

shiva 

  

  

------------------------------------------ 

  

7. items(): 

It returns list of tuples representing key-value pairs. 

  

\[(k,v),(k,v),(k,v)] 

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

for k,v in d.items(): 

    print(k,"--",v) 

  

Output 

100 -- aashish 

200 -- neha 

300 -- shiva 

  

  

---------------------------------------- 

  

8. copy(): 

To create exactly duplicate dictionary(cloned copy) 

  

d1=d.copy(); 

------------------------------------------- 

9. setdefault(): 

  

d.setdefault(k,v) 

    If the key is already available then this function returns the corresponding value. 

    If the key is not available then the specified key-value will be added as new item to the 

dictionary. 

  

Eg: 

d={100:"aashish",200:"neha",300:"shiva"} 

print(d.setdefault(400,"pavan")) 

print(d) 

print(d.setdefault(100,"sachin")) 

print(d) 

  

Output:- 

pavan 

{100: 'aashish', 200: 'neha', 300: 'shiva', 400: 'pavan'} 

aashish 

{100: 'aashish', 200: 'neha', 300: 'shiva', 400: 'pavan'} 

  

-------------------------------------------------------- 

10. update(): 

d.update(x) 

All items present in the dictionary x will be added to dictionary d 
