Session 9 : Python Strings 

================================================================================================================== 

Video 107. Importance of String and Ways of Declaring String 

  

* String Data Type: 

- if any application having 1000 objects then min 90% objects are string only. 

- The most commonly use object is string only. 

  

eg. If I want to develop Voter Registration Application then: 

  

we need to devlop form which need to fill by user. 

  

--------------------------------------- 

  

- Name: => String 

- F.name: => String 

- M.name: => String 

- DOB:  

- Gender: => String 

- Address: => String 

  - H.number: => String 

  - Street: => String 

  - village: => String 

  - State: => String 

  - Country: => String 

  - PinCode: 

- Submit => String 

  

------------------------------------ 

  

- Did you observed 90% object in above form is "String" only. 

  

- X = input("Enter somedata")  

=> Default Data type for input() function is always string.  

- Because string is most commonly used DT. 

  

* What is string data type? 

- It is nothing but a sequance of charters either within single quote '' or within double quote"". 

  

eg.  

s = 'neha' => String 

s = "neha" => String 

  

  

- In other programming language like C, C+ or C# they denoting single chater/words as "char" data type. 

- But in python even it is a single word also it will consider as "String" DT only.  

  

- Take very spacial care => When we are using "triple quotes".  

- Triple Quotes use for 2 purposes. 

1. To define multi-line string literals 

s = """Neha 

              Aashish 

               Jain"""  

- It can be triple single quotes('''String in Multi line''')     

                            triple double quotes("""String in Multi line """) 

  

2. If you want to use a single quote or duble quote as a symbol, then you can use "Triple qoutes".  

eg. 

'This is ' symbol' => Invalid 

"This is ' symbol" => Valid 

'This is \' symbol' => Valid 

'''This is ' symbol''' => Valid 

"""This is ' symbol""" => Valid 

  

eg. 

'The \"python notes\" by \'Durga\' sir is very good.' => This is valid but not looks so good 

'''The "python notes" by 'Durga' sir is very good.'''   => Thats why we are using this. 

  

  

---------------------------------------------------------------------------------------------------------------------------------------------------- 

  

108. How to access characters of string and application. 

  

- This we can do in 2 way: 

1. By using Index 

2. By using Slice operator  

  

1. By using Index:- 

- Big speciallity of Python Index is: 

- We can access charters either by using positive index or by negetive index python support both.  

  

s = 'aashish'  

      

     -ve index    -7  -6  -5  -4  -3  -2  -1 

=>         | a | a | s | h | i | s | h | 

      +ve index    0   1   2   3   4   5   6 

    

+ve Index => Left to Right (Forwards direction) 

-ve Index => Right to Left (Backward direction) 

  

s = 'aashish' 

s[0] -> a 

s[-1] -> h 

  

- for "s" only posible way is between -7 to 6 but what if I type [100] so its string index out of range error. 

  

s[100] -> IndexError 

  

  

eg. WAP to display charaters of given string index write both +ive n -ve index.  

  

  

s = input("Enter the string: ") 

  

i = 0 

  

for x in s: 

  print("The charter present at +ve index :{} and at -ve index : {} is : {}".format(i, i-len(s), x)) 

  i += 1 

  

o/p: 

Enter the string: Aashish 

The charter present at +ve index :0 and at -ve index : -7 is : A 

The charter present at +ve index :1 and at -ve index : -6 is : a 

The charter present at +ve index :2 and at -ve index : -5 is : s 

The charter present at +ve index :3 and at -ve index : -4 is : h 

The charter present at +ve index :4 and at -ve index : -3 is : i 

The charter present at +ve index :5 and at -ve index : -2 is : s 

The charter present at +ve index :6 and at -ve index : -1 is : h 

  

=========================================================================================================================================================== 

  

video 109: Slice Operator Introduction 

  

- How you can access the character of the sting by using Index we covered in video 108.  

  

- Now in this video we will learn, How you can access the character of the sting by using Slice Operator. 

  

-Slice Operator:- 

- Differance between Index and Slice. 

  

Index Slice 

-here you can get 1 characters. -here you can get a range of characters. 

  

- Slices means sub-string.  

  

eg1.  

s = 'aashish'  

      

     -ve index    -7  -6  -5  -4  -3  -2  -1 

=>         | a | a | s | h | i | s | h | 

      +ve index    0   1   2   3   4   5   6 

    

+ve Index => Left to Right (Forwards direction) 

-ve Index => Right to Left (Backward direction) 

  

eg2.  

a b c d e f g h i j k l m n o p q r s t u v 

                - - -           - - - - - 

  

slices : efg    &        opqrs 

  

  

- Syntex for Slice Operator(SO):- 

- SO conatain 3 arugments. 

  

s[begin : end : steps]    

  

-So sub-string s[begin : end] what it will return? 

-SubString from "being" index to "end-1" index 

-Begin is optional and default value is 0. 

-End is optional and default value is lenght of given string "len(s)" 

  

   

s = a b c d e f g h i j k  

    0 1 2 3 4 5 6 7 8 9 10 

        - - - - - 

  

s[2:7] => 2 to 6 => c d e f g 

s[:7] => 0 to 6 => a b c d e f g 

s[2:] => 2 to len(s) => c d e f g h i j k 

s[:] => total string => a b c d e f g h i j k 

  

>>> s = "abcefghijk" 

>>> s[2:7] 

o/p:'cefgh' 

>>> s[:7] 

o/p:'abcefgh' 

>>> s[2:] 

o/p:'cefghijk' 

>>> s[:] 

o/p:'abcefghijk' 

>>> 

  

- Till here its clear? right 

- Now we will loop into steps arugment. 

- Step means how much how much increment/decrement you want. 

-If you are not taking step then, Default value for step is 1. 

  

eg.  

s = "abcefghijk" 

s[2 : 7]  or  s[2 : 7 : 1] =>both are same 

  

s = a b c d e f g h i j k  

    0 1 2 3 4 5 6 7 8 9 10 

  

>>> s = "abcdefghijk" 

>>> s[2 : 7] 

'cdefg' 

>>> s[2 : 7 : 1] 

'cdefg' 

>>> s[2 : 7 : 2] 

'ceg' 

>>> s[2 : 7 : 3] 

'cf' 

>>> s[::2] #from start every 2nd char 

'acegik' 

>>> s[::3] #from start every 3rd char 

'adgj' 

>>> s[::1] #from start every one char 

'abcdefghijk' 

>>> 

  

====================================================================================================================================================== 

  

video 110: Slice Operator(SO) Rules 

  

s[begin : end : steps]    

  

-So begin/end/steps value can +ve or -ve, because python suport both index. 

  

-if step is +ve: 

-> Left to Right 

=>[forward direction]  

=> from "being" to "end-1" 

  

-if step is -ve: 

<- Right to Left 

=>[backward direction] 

=>Begin to end+1  

  

- In SO step value can't be zero, either +ve or -ve value.  

eg. 

>>> print(s[-7:-1:0]) => ValueError: slice step cannot be zero 

  

*** If end value is 0 in "Forward Direction" then result is always "empty". 

eg. s = 'nehaaashish'  

>>> print(s[2:0:2]) => o/p: <empty> 

Because will never get zero after 2 in positive number(forward direction) 

  

*** If end value is -1 in "Backward Direction(BD)" then result is always "empty". 

>>> print(s[2:-1:-2]) => o/p: <empty> 

Because in case of BD, it will always start from -1 but if -1 is at end place in BD it will give "empty" string. 

  

- In Forward direction what are default values: 

begin => 0 

end => len(s) 

  

- In Backward direction what are default values: 

begin => -1 

end => -(len(s)+1) => until 1st char 

  

  

  

==================================================================================================================================================== 

  

video 111 - Case Study 

  

>>> s= 'abcdefghij' 

  

>>> s[1:6:2] => 'bdf' 

  

>>> s[::1] => 'abcdefghij' 

  

>>> s[::-1] => 'jihgfedcba' 

  

>>> s[3:7:-1] => '' #empty string 

  

>>> s[7:4:-1] => 'hgf' # 7 to 5 

  

>>> s[0:10000:-1] => '' 

  

>>> s[0:10000:1] => 'abcdefghij' # 0 to 9999 

  

>>> s[-4:1:-1] => 'gfedc' #-4 to 2 

  

>>> s[-4:1:-2] => 'gec'    

  

>>> s[5:0:1] => '' 

  

>>> s[9:0:0] => ValueError: slice step cannot be zero 

  

>>> s[0:-10:-1] => '' # 0 to -9 which is not possible 

  

>>> s[0:-11:-1] => 'a' # 0 to -10 which 'a' 

  

>>> s[0:0:1] => '' #in forward direction if end value is 0 then it will give empty string 

  

>>> s[0:-9:-2] => '' #in backward driection if begin value is 0 then it will give empty string 

   # because string can't go 0 to -8 in backward direction (<-) 

  

>>> s[10:-1:-1] => '' #in backward direction if end value is -1 then it will give empty string 

  

>>> s[10000:2:-1] => 'jihgfed' # (begin to end+1) => 1000 to 3 

  

------------------------------------------------------------------------------------------------------- 

  

video 112: Mathmatical, Membership and Comparison Operators for Strings 

  

- There are 2 Mathmatical Operators(MO) we can apply for strings:- 

  

1. + => Concatenation 

2. * => Repetition 

  

  

- If you want to apply plus (+) operator then both argument should be String Type only. 

  

eg. 

>> 'neha' + 'jain' 

nehajain 

  

eg. 

>>'neha' + 10 

TypeError: can only concatenate str (not "int") to str 

  

eg. 

>>> "neha" + 10.0 

TypeError: can only concatenate str (not "float") to str 

  

>>> "neha" + True 

TypeError: can only concatenate str (not "bool") to str 

>>> 

  

- If you want to apply start (*) operator for the String then one arugment should be "String" and other arugment must be "Int". 

  

>>> 'neha' * 3 

'nehanehaneha' 

  

>>> 'neha ' * 3 

'neha neha neha ' 

  

>>> 3 * 'neha' 

'nehanehaneha' 

  

>>> 'neha' * 3.0 

TypeError: can't multiply sequence by non-int of type 'float' 

  

Q. Which are valid combination ? 

String + String => Valid 

String * String => Invalid 

String + Int => Invalid 

String * Int => Valid 

  

  

-------------------------------------------------- 

  

Membership Operators: 

  

1. in 

2. not in 

  

eg.  

  

>>> 'n' in 'neha' 

True 

  

>>> 'z' in 'neha' 

False 

  

>>> 'z' not in 'neha' 

True 

  

  

code 1:- 

  

s = input("Enter Main String: ") 

substring = input("Enter SubString: ") 

  

if substring in s: 

    print("SubString Present in Main String") 

else: 

    print("SubString Not Present in Main String") 

  

o/p: 

Enter Main String: nehacomingfrombandratobhayander 

Enter SubString: bandra 

  

SubString Present in Main String 

  

code 2:- 

  

s = input("Enter Main String: ") 

substring = input("Enter SubString: ") 

  

if substring in s: 

    print("SubString Present in Main String") 

else: 

    print("SubString Not Present in Main String") 

  

o/p: 

Enter Main String: nehacomingfrombandratobhayander 

Enter SubString: miraroad 

  

SubString Not Present in Main String 

  

--------------------------------------------- 

  

* Comparison Operators for Strings: 

  

<, <=, >, >=, ==, != 

  

eg. 

  

>>> 'neha' > 'jain' => True 

  

>>> ord('n') => 110 

>>> ord('j') => 106 

  

- So Ord value of N is greater then J. 

- By default comparing happening with 1st char, but if 1st char is same then comaprision happen with 2nd char and so on... 

  

  

>>> 'ramba' > 'ramya' => False 

>>> 'ramba' < 'ramya' => True 

  

Since, ram is common so it will compare with 'b' and 'y'. 

  

>>> ord('b') => 98 

>>> ord('y') = 121 

  

  

  

*** code: 

  

r1 = input("Enter Main String: ") 

r2 = input("Enter SubString: ") 

  

if r1 == r2: 

    print("Both string are equal") 

elif r1 > r2: 

    print(f"R1 : {r1} is greater then R2: {r2} ") 

else: 

    print(f"R2 : {r2} is greater then R1 : {r1}") 

  

  

o/p1: 

Enter Main String: Neha 

Enter SubString: Aashish 

  

R1 : Neha is greater then R2: Aashish 

  

o/p2: 

Enter Main String: ramba 

Enter SubString: ramya 

  

R2 : ramya is greater then R1 : ramba 

  

  

-=-=-================================================================================================================================================== 

  

Video 113: strip(), lstrip(), rstrip() to remove the space present in the given  

  

city = input("Enter name of city: ").strip() 

  

if city == 'mumbai': 

    print('Welcome to Mumbai') 

elif city == 'pune': 

    print("welcome to Pune") 

elif city == 'surat': 

    print("Welcome to Surat") 

else: 

    print("Enter valid city name") 

  

  

*** String Methods Removing Spaces from the string rules: 

  

1. strip() ==> To remove spaces present at both sides of the string 

  

2. rstrip() ==> To remove spaces present at end of the string. 

  

3. lstrip() ==> To remove spaces present at beginning of the string. 

  

================================================================================================= 

  

video 114: How to find sub-string 

  

*** Finding SubString *** 

  

eg. 

- we have 4 methods to find string. 

1. find() 

s = 'abcba' 

# Find method always find letter left to right (forward direction) until match string found, if it find at 1st occurenace. 

  

# It string not avaiable then it will give -1.  

  

#It returns index of first occurrence of given substring. 

  

  

print(s.find('b')) => 1 

print(s.find('z')) => -1  

  

  

2. rfine() 

- It find in backward direction (right to left) 

- It will always return positive index only.  

- If string not aviabile in given string then rfind also return -1. 

  

s = a b c b a 

    0 1 2 3 4 

  

s.find('b') => 1 

s.rfind('b') => 3 => its return positive index only. 

  

3. index() 

- It will find the string in given boundary(range). 

  

s = 'abcdefghijk' 

  

print(s.find('b') ==> 1 

  

print(s.find('b', 3, 8) # 3 to 7 ==> -1 

- since b is not aviable in range then we got -1 as result.  

  

  

*** Syntax *** 

find(substring, begin, end) => begin index to end-1 index 

  

* To search in the boundary 

* IT will always search for the given substring from begin index to end-1 index 

  

  

  

4. rindex() 

- Even this boundray posible 'r' find.  

  

>>> s = 'abcba' 

  

>>> print(s.rfind('c',2, 4)) => 2 

>>> print(s.rfind('b',2, 4)) => 3 

  

================================================================================================== 

  

video 115: String Methods: index() and rindex() to find substrings 

  

>>> s = 'abcba' 

  

- Index method is same as find method only. 

- So the specified substring is available simply return index of 1st occurrence so its same is find method only.  

eg. 

>>> print(s.index('b')) => 1 

  

  

- But if specified substring is not available then will get, "ValueError". 

eg. 

>>> print(s.index('z')) => ValueError: substring not found 

  

- Boss compulsory string must be there, if string not there then give value error in index method. 

  

  

- rIndex Method:- Its search from right to left.  

  

>>> print(s.rindex('b')) => 3  

  

>>> print(s.index('z')) => ValueError: substring not found 

- Even its rindex give ValueError in substring not found. 

  

  

code:- 

  

mail = input("Enter mail id:- ") 

  

try: 

    i = mail.index('@') 

    print("contain valid mail id") 

  

except ValueError: 

    print("Invalid mail id") 

  

  

- Index method with boundray also we can use:- 

  

>>> s = 'abcdefghijklm' 

  

>>> print(s.rindex('f',3,9)) => 5 

  

>>> print(s.rindex('z',3,9)) => ValueError: substring not found 

  

  

  

--------------------- 

  

Q: can we find a word in string or not ? 

  

>>> s = 'aashishbhavarlalpunamiya' 

  

>>> print(s.index('bhavarlal')) => 7 

  

>>> print(s.rindex('bhavarlal',6, 20)) => 7 

  

  

Q: can we put index in boundary and end index more then lenght of string also ? 

  

>>> print(s.rindex('bhavarlal',6, 1000)) => 7 

  

================================================================================================= 

  

Video 116:-  Counting substring in the given String: 

  

We can find the number of occurrences of substring present in the given string by using count() method. 

  

1. s.count(substring) ==> It will search through out the string 

  

2. s.count(substring, bEgin, end) ===> It will search from bEgin index to end-1 index 

  

Eg: 

1) s="abcabcabcabcadda"  

2) print(s.count('a'))  

3) print(s.count('ab'))  

4) print(s.count('a',3,7) 

  

Output: 

6 

4 

2 

  

  

  

  

================================================================================================== 

video 117:- To find index of all occurrences: 

  

  

- Count method will say number of occurances.  

  

>>> s = 'abcabcabcabc' 

>>> s.count('abc') 

4 

  

  

>>> print(s.find('abc')) 

0 

>>> print(s.find('abc',3,10)) 

3 

>>> print(s.find('abc',6,10)) 

6 

>>> print(s.find('abc',9,10)) 

-1 

>>> 

  

  

code: 

  

s = 'abcabcabca' 

sub = 'abc' 

i = s.find(sub) 

if i == -1: 

    print("String not found") 

while i != -1: 

    print("{} is present at index {}".format(sub, i)) 

    i = s.find(sub, i+len(sub), len(s)) 

  

o/p: 

abc is present at index 0 

abc is present at index 3 

abc is present at index 6 

  

  

code 2: 

  

s = 'abcabcabca' 

sub = input("Enter substring: ") 

i = s.find(sub) 

if i == -1: 

    print("String not found") 

while i != -1: 

    print("{} is present at index {}".format(sub, i)) 

    i = s.find(sub, i+len(sub), len(s)) 

  

o/p: 

Enter substring: a 

a is present at index 0 

a is present at index 3 

a is present at index 6 

a is present at index 9 

  

o/p: 

Enter substring: b 

b is present at index 1 

b is present at index 4 

b is present at index 7 

  

o/p: 

Enter substring: ab 

ab is present at index 0 

ab is present at index 3 

ab is present at index 6 

  

o/p: 

Enter substring: ba 

String not found 

  

o/p: 

Enter substring: bca 

bca is present at index 1 

bca is present at index 4 

bca is present at index 7 

PS C:\Users\aashijai\Downloads\python_by_durga>  

  

  

code 3: 

s = 'abcabcabca' 

sub = input("Enter substring: ") 

i = s.find(sub) 

if i == -1: 

     

    print("String not found") 

count = 0 

while i != -1: 

    count = count+1 

    print("{} is present at index {}".format(sub, i)) 

    i = s.find(sub, i+len(sub), len(s)) 

print("The number of occurrence is:", s.count(sub)) 

#OR 

print("The number of occurrence is:" , count) 

  

o/p: 

Enter substring: bca 

bca is present at index 1 

bca is present at index 4 

bca is present at index 7 

The number of occurrence is: 3 

The number of occurrence is: 3 

  

  

================================================================================================== 

video 118: 

*** Replacing a string with another string: 

  

s.replace(oldstring,newstring) 

inside s, every occurrence of oldstring will be replaced with newstring 

  

  

eg: 

>>> s = 'abababab' 

>>> print(s.replace('b', 'a')) => aaaaaaaa 

  

Eg1: 

  

s="Learning Python is very difficult" 

  

s1=s.replace("difficult","easy") 

  

print(s1) 

  

Output: 

Learning Python is very easy 

  

Eg2: All occurrences will be replaced 

  

s="ababababababab" 

  

s1=s.replace("a","b") 

  

print(s1) 

  

Output: bbbbbbbbbbbbbb 

  

  

  

  

  

>>> s = "neha aashish jain" 

  

>>> s1 = s.replace(' ', '') 

  

>>> print(s1)  

=> nehaaashishjain 

  

>>> print(len(s)-len(s1))  

=> 2 

  

>>> print("number of space", s.count(' '))  

=> number of space 2 

  

>>> print("Number of space without count method: " , len(s)-len(s1))  

=> Number of space without count method:  2 

  

- Now we will add multiple spaces in our statement. 

  

>>> s = "neha     aashish    jain   is the     best wife" 

  

>>> print("Number of space without count method: " , len(s)-len(s1)) 

Number of space without count method:  32 

>>> 

  

  

*** Ask in Interview:- 

String objects are immutable then how we can change the content by using replace() method? 

  

-> So once we create string object we can't change it and if we are trying to change by using replace() method with that a new object will be create. 

  

-> So string obejects are always immutable but in case of replace a new object will be created. 

  

eg:- 

s = 'abababa' 

s1 = s.replace('a', 'b')  

  

print(s) -> abababa 

print(s1) -> bbbbbbb 

  

  

eg. 

  

s = 'abababa' 

print("Before : {} and id : {}". format(s, id(s))) 

s = s.replace('a','b') 

print("After : {} and id : {}". format(s, id(s))) 

  

o/p: 

Before : abababa and id : 2989669743216 

After : bbbbbbb and id : 2989669760880 

  

Hence, Even if we are using same referance variable the object id is different.  

  

========================================================================================== 

  

video 119: String Method: split() and join() for Splitting and Joining of Strings 

  

- We can split the given string according to specified seperator by using split() method. 

  

l=s.split(seperator) 

  

- The default seperator is space. The return type of split() method is Lis 

code: 

  

s = "neha aashish jain" 

l = s.split() # Default Seperator in split method is 'space' 

print(l) 

for x in l: 

    print(x) 

  

o/p: 

['neha', 'aashish', 'jain'] 

neha 

aashish 

jain 

  

*** Join *** 

Joining of Strings: 

*************** 

  

We can join a group of strings(list or tuple) wrt the given seperator. 

  

s=seperator.join(group of strings) 

  

Eg: 

t=('sunny','bunny','chinny') 

s='-'.join(t) 

print(s) 

Output: sunny-bunny-chinny 

  

eg. 

  

s = 'neha', 'aashish', 'jain' 

l = "::".join(s) 

print(l) 

  

o/p: 

neha::aashish::jain 

  

  

  

================================================================================================== 

  

video 120 - Changing case of characters of the string and Application - 1

- We have mutiple methods to convert 
    from lowercase to uppercase and uppercase to lowercase:

Changing case of a String:
We can change case of a string by using the following 4 methods.

1. upper()
===>To convert all characters to upper case

2. lower() 
===>To convert all characters to lower case

3. swapcase()
===>converts all lower case characters to upper case and all upper case characters to  lower case

4. title() 
===>To convert all character to title case. i.e first character in every word should be upper  case and all remaining characters should be in lower case.

5. capitalize() 
==>Only first character will be converted to upper case and all remaining characters  can be converted to lower case

Eg:
s='learning Python is very Easy'  
print(s.upper())
print(s.lower())  
print(s.swapcase())  
print(s.title())  
print(s.capitalize())

Output:
LEARNING PYTHON IS VERY EASY
learning python is very easy  
LEARNING pYTHON IS VERY eASY
Learning Python Is Very Easy  
Learning python is very easy

Q1. WAP to check whether the given 2 strings are equal or not by ignoring case?

code:- 
s1 = input("Enter 1st string: ")
s2 = input("Enter 2nd string: ")

if s1.lower() == s2.lower():
    print("Both string are equal")
else:
    print("String are not equal")

OR

s1 = input("Enter 1st string: ").lower()
s2 = input("Enter 2nd string: ").lower()

if s1 == s2:
    print("Both string are equal")
else:
    print("String are not equal")


Output:
Enter 1st string: aashish
Enter 2nd string: Aashish
Both string are equal
  

================================================================================================== 

  

video 121 - same topic continue. 
Q1. Write a program to check whether provided username and password
are valid or not ?
username is not case sensitive but password should be case sensitive.

code:
username = input("Enter Username: ").lower()
pwd = input("Enter Password: ")

if username == 'aashish' and pwd == 'Aadinath@1':
    print("Valid user")
else:
    print("Invalid user")

o/p:
Enter Username: Aashish
Enter Password: adinath@1
Invalid user

PS D:\Study\python_by_durga>test1.py 
Enter Username: aashish
Enter Password: Aadinath@1
Valid user


Q2. WAP to convert 1st and last characters as upper case
and all remaining characters should be lowercase of the given string.

Explaination:- 

i/p: aashish 
o/p : AashisH

-7  -6  -5  -4  -3  -2  -1
 a   a   s   h   i   s   h
 0   1   2   3   4   5   6

# How will find 1st character and last character ?

1st character => s[0]
last character => s[-1]

s[0].upper()
s[-1].upper()

# Now how we will find remaining character ?
if you want to consider upto 's' :-
     s[-2] is one way.
     len(s)-1 is another way. 

s[1:len(s)-1]


Code:
s = input("Enter any string: ")

output = s[0].upper() + s[1:len(s)-1].lower() + s[-1].upper()

print(output)

o/p:
Enter any string: aashish
AashisH

or

Enter any string: aashish jain
Aashish jaiN
================================================================================================== 
video 122 - changing starting and ending part of the string.

- If you have requirement that 
    - If string is starts with Aashish or not.
    - If string ends with Jain or not.

Methods:- 
1. s.startswith(substring)
    - Returns True if the string starts with provided substring.
2. s.endswith(substring)
    - Returns True if the string ends with provided substring.


Eg:
s='learning Python is very easy'  
print(s.startswith('learning'))     -> True
print(s.startwith('lea))            -> True
print(s.startwith('Lea))            -> False
print(s.endswith('Easy'))           -> False
print(s.endswith('easy'))           -> True
================================================================================================== 
video 123 - Checking Type of characters present in the given string 

- To check type of characters present in a string:
- Python contains the following methods for this purpose.

1. isalnum() 
    - Returns True if all characters are alphanumeric( a to z , A to Z ,0 to9 )
2. isalpha()
    - Returns True if all characters are only alphabet symbols(a to z,A to Z)
3. isdigit()
    - Returns True if all characters are digits only( 0 to 9)
4. islower()
    - Returns True if all characters are lower case alphabet symbols
5. isupper()
    - Returns True if all characters are upper case aplhabet symbols
6. istitle()   
    - Returns True if string is in title case
7. isspace()
    - Returns True if string contains only spaces



print('Aashish786'.isalnum())               #True         
print('Aashish786'.isalpha())               #False
print('Aashish'.isalpha())                  #True
print('Aashish'.isdigit())                  #False
print('786786'.isdigit())                   #True
print('abc'.islower())                      #True
print('Abc'.islower())                      #False
print('abc123'.islower())                   #True
print('ABC'.isupper())                      #True
print('Learning python is Easy'.istitle())  #False  
print('Learning Python Is Easy'.istitle())  #True  
print(' '.isspace())                        #True


Demo:-

s = input("Enter any charater:- ")

if s.isalnum():
    print("It is alpa numeric character")
    if s.isalpha(): 
        print("It is alphabet symbol character")
        if s.islower():
            print("It is lowercase alphabet character")
        else:
            print("It is upper case alphabet character")
    else:
        print("It is a digit")
elif s.isspace():
    print("It is space character")
else:
    print("No Space in character")


output:


Enter any charater:- Z
It is alpa numeric character
It is alphabet symbol character
It is upper case alphabet character

Enter any charater:- 9
It is alpa numeric character
It is a digit

Enter any charater:-  
It is space character

Enter any charater:- @ 
No Space in character

================================================================================================== 

Video 124: String Methods Summary 

*** Removing Spaces from the String *** 

1. strip() => To remove spaces present at both sides of the String 

2. rstrip() ==> To remove spaces present at end of the String. 

3. istrip() ==> To remove spaces present at beginning of the String 

*** Finding Substrings *** 
Total 4 Methods: 

1. find() 
- It returns index of 1st occurrence of given substring. 
- If it is not available then it returns -1. 

2. rfind() 
- To Search in the boundary 
- It will always search for the given substring from begin index to end-1 index. 

3. index() 
- It returns index of 1st occurrence of given substring. 
- If it is not available then we will get ValueError. 

4. rindex() 
- To Search in the boundary 
- It will always search for the given substring from begin index to end-1 index. 
- It returns index of 1st occurrence of given substring.  
- If it is not available then we will get ValueError. 

  
*** Counting of Substrings *** 

1. s.count(substring) 
- Returns the number of occuurences of the given substring in the total string. 

2. s.count(substring, begin, end) 
- Returns the number of occurrences of the given substring from begin index to end-1 index. 

*** Replacing a String with another: 

s.replace(oldstring, newstring) 

- Inside s, every occurrence of oldstring will be replaced with newstring. 

  
*** Splitting of Strings *** 

1. s.split(separator) 
- To split the given string s according to the given separator. 
- The default separator is space. 

*** Counting of Substrings *** 
1. s.count(substring) 
- Returns the number of occurrences of the given substring in the total string. 

2. r.count(substring, begin, end) 
-Returns the number of occurrences of the given substring from begin index to end-1 index.  

*** Replacing s Stirng with another *** 
s.replace(oldstring, newstring) 
- Inside s, every occurrence of oldstring will be replaced with newstring. 

*** Splitting of String *** 
s.split(separator) 

To split the given string s according to the given separator. 

The default separator is space.  

  

*** Joining of Strings *** 

  

s= separator.join(group of strings) 

  

To join group of strings(list or tuple) according to given separator. 

  

  

*** Changing Case of a String *** 

  

upper() => To convert all char to upper case. 

  

lower() => To convert all char to lower case. 

  

swapcase() => To convert lower case char to upper and upper case char to lower. 

  

title() => To convert all characters to title case. 

  

capitalize() => Only first character will be convered to upper case and all remaining characters can be converted to lower case.  

  

  

*** Checking Starting and Ending part of the String *** 

  

1. s.startswith(substring) 

Returns True if the string starts with provided substring. 

  

2. s.endswith(substring) 

Returns True if the string ends with provided substring 

  

  

*** To check Type of Characters present in a string *** 

  

1. isalnum():  

=> Return True if all characters are alphanumer (a-z, A-Z, 0-9) 

  

2. isalpha(): 

=> Return True if all characters are alphabet symbols (a-z, A-Z) 

  

3. isdigit(): 

=> Returns True if all characters are only digits  

  

4. islower(): => Return True if char are lowercase alphabet 

  

5. isupper():  => Return True if char are uppercase alphabet 

  

6. istitle():  => Return True if string is in title case. 

  

7. isspace(): => Return True if string contains only spaces. 

  

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

 