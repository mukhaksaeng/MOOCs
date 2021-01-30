"""
Assume s is a string of lower case characters.
Write a program that counts up the number of vowels contained in the string s. 
Valid vowels are: 'a', 'e', 'i', 'o', and 'u'.
"""

#s = 'azcbobobegghakl'

vowels = ["a", "e", "i", "o", "u"]
num_vowels = 0

for char in s:
    if char in vowels:
        num_vowels += 1
        
print("Number of vowels: ", num_vowels)        

# Expected output: Number of vowels: 5