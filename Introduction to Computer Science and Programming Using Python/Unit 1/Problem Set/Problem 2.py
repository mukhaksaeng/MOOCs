"""
Assume s is a string of lower case characters.
Write a program that prints the number of times the string 'bob' occurs in s
"""

# s = 'azcbobobegghakl'

num_bob = 0
for i in range(len(s) - 2):
    if s[i: i + 3] == "bob":
        num_bob += 1
        
print("Number of times bob occurs is: ", num_bob)

# Expected output: Number of times bob occurs is: 2