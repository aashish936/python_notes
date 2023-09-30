Video 125 and 126:- 

Q1. Write a program to reverse the given String

input: Aashish  output: hsihsaA

1st Way is Slice Operator:

s=input("Enter Some String:")  print(s[::-1])

---------------------------------------------
video 126:- 

2nd Way is by Python In-build function 'reversed()' and join() method:


- By default when we use reversed function it will give output 
one after another character by character :-
eg:
i/p: neha
o/P:
a
h
e
n

but we want output in form of string like 'neha' should become 'ahen'.
-So will going to use join() funciton with '' empty seperator.

eg:
s = neha
r = reversed(s)
output = ''.join(r)
print(output)

OR
s=input("Enter Some String:")  
print(''.join(reversed(s)))

output:

Enter Some String:Learning Python Is Very Very Easy.
.ysaE yreV yreV sI nohtyP gninraeL

-----------------------------------------------------------------
video 127: 3rd Way : Reversed the string by own without any method or function.

s=input("Enter Some String:")  
i=len(s)-1
output=''  
while i>=0:
    output=output+s[i]  
    i=i-1
print(output)

---------------------------------------------------------------
Video 128: Q2. Program to reverse order of words.

input : Learning Python is very Easy
output : Easy Very is Python Learning

Code:

s = input("Enter some String:- ")
l = s.split()   # We will string in list(l) form
print(l)
l1 = l[::-1]
print(l1)   # Now it will reverved the given list(l)
# But we need output in the form of String not list. 
output = ' '.join(l1) # So we will going to join() method.
print(output)


output:

Enter some String:- Leaning python is easy
['Leaning', 'python', 'is', 'easy']
['easy', 'is', 'python', 'Leaning']
easy is python Leaning

OR 
Code2:

#same code1 but without print n Explaination

s = input("Enter some String:- ")
l = s.split()   
l1 = l[::-1]
output = ' '.join(l1) 
print(output)

output:
Enter Some String:Learning Python is very easy!!  
easy!!! very is Python Learning

OR another way is :

code:


s = input("Enter some String:- ")
l = s.split()   
l1 = []
i = len(l)-1
while i>=0:
    l1.append(l[i])
    i -= 1
output = ' '.join(l1)
print(output)

Output:
Enter Some String:Learning Python is very easy!!  
easy!!! very is Python Learning


-------------------------------------------------------

video 129: Q3. Program to reverse internal content of each word.

input:  Aashish    Jain  Solutions
Output:  hsihsaA   niaJ   snoitloS

Code1:- Way 1 by using For loop:

s = input("Enter some String:- ")
l = s.split()   
l1 = []
for word in l:
    l1.append(word[::-1])
output = ' '.join(l1)
print(output)

Code2: Way 2 by using while loop:

s = input("Enter some String:- ")
l = s.split()   
l1 = []
i=0
while i<len(l):
    l1.append(l[i][::-1])
    i += 1
output = " ".join(l1)
print(output)

output:
Enter some String:- Aashish Jain Soltions
hsihsaA niaJ snoitloS

-----------------------------------------------

Video 130 : Program to REVERSE internal content of every 
2nd word present in given string

Input: One Two Three Four Five Six
Output One owT Three ruoF Five xiS

Code: 


s = input("Enter some String:- ")
l = s.split()   
i = 0
l1 = []
while i < len(l):
    if i % 2 == 0:
        l1.append(l[i])
    else:
        l1.append(l[i][::-1])
    i += 1
output = ' '.join(l1)
print(output)

output:

Enter some String:- One Two Three Four Five Six
One owT Three ruoF Five xiS

-----------------------------------------------------

Video 131 : WAP to rpint character present at 
even index and odd index seperately for the given string. 

for Explaination:

s = 'aashishjain'

a   a   s   h   i   s   h   j   a   i   n
0   1   2   3   4   5   6   7   8   9   10

at even index : asihan
at odd  index : ahsji


code:


s = input("Enter some String:- ")
i = 0

while i < len(s):
    print(s[i])
    i += 2      # I value should increment by 2 so will get even index
print("Character present at even index")
 
i = 1
while i < len(s):
    print(s[i])
    i += 2  # here i is 1 so if we increment by 2 then will get odd index
print("Character present at odd index")


Code 2 way 2 by slice Operator:


s = input("Enter some String:- ")
print("Character present at even index :", s[::2])
print("Character present at odd index :", s[1::2])


output:

Enter some String:- AashishJain
Character present at even index : Asihan
Character present at odd index : ahsJi


-----------------------------------------------------

Video 132 : WAP to merge characters of 2 strings into a single 
string by taking characters alternatively.

s1 = 'RAVI'
s2 = 'TEJA'

output: RTAEVJIA

Note:: if length of string are same then below code will work:

s1 = input("Enter 1st String:- ")
s2 = input("Enter 2nd string:- ")
i,j=0,0
output = ''
while i<len(s1) or j<len(s2):
    output=output+s1[i]+s2[j]
    i += 1
    j += 1
print(output)

output:

Enter 1st String:- neha
Enter 2nd string:- jain
njeahian

or

Enter 1st String:- aashish
Enter 2nd string:- jain
Traceback (most recent call last):
  File "d:\Study\python_by_durga\test1.py", line 7, in <module>  
    output=output+s1[i]+s2[j]
                        ~~^^^
IndexError: string index out of range

Code2 : if s1 and s2 value len is different then:


s1 = input("Enter 1st String:- ")
s2 = input("Enter 2nd string:- ")
i,j=0,0
output = ''
while i<len(s1) or j<len(s2):
    if i<len(s1):
        output=output+s1[i]
        i += 1

    if j<len(s2):
        output=output+s2[j]
        j += 1
print(output)


output:
Enter 1st String:- aashish
Enter 2nd string:- jain
ajaasihnish


-----------------------------------------------------

Video 133 : 
Assume input string contains only alphabet symbols
and digits.
WAP a program to sort character of the string,
1st alpabet symbols followed by digits.

input   : B4A1D3
OUTPUT  : ABD134

Explaination:

Here,
s = 'B4A1D3'

# In Python, there is an in-build function 'sorted()' is there. 

print(sorted(s))

# But there is problem with sorted function is that,
    - It dispay digits 1st and then alpabet.
    - Output will in list DP not string DP. 


Code:

s = input("Enter some alphanumeric string to sort: ")
alphabet = []
digit = []
for ch in s:
    if ch.isalpha():
        alphabet.append(ch)
    else:
        digit.append(ch)

output = ''.join(sorted(alphabet) + sorted(digit))
print(output)

output:
Enter some alphanumeric string to sort: A2S5D6F7G8G9H9A7D
AADDFGGHS25677899


---------------------------------------------------

Video 134: WAP for the following requirement?

input : a4b3c2
output : aaaabbbcc

a4b3c2

Step 1: if 'a' it is alpabet symbol then save in variable X.
x = a, x = b, x = c

Step 2: if next symbol is digit can you please multiple * 
previous alpabet symbol into that many number of time.
x * 4 + b * 3 + c * 2

Repeate Step1 and Step 2 for all reaming alphabet.

code:

s = input("Enter some alphanumeric string to sort: ")
output = ''
for ch in s:
    if ch.isalpha():
        x = ch
    else:
        d = int(ch)
        output = output + x * d
    
print(output)

output:
Enter some alphanumeric string to sort: a4b3c2g2
aaaabbbccgg

