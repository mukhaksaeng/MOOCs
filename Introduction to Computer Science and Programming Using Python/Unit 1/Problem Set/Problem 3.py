"""
Assume s is a string of lower case characters.
Write a program that prints the longest substring of s in which the letters occur in alphabetical order.
"""

# s = 'azcbobobegghakl'

i, j = 0, 1
substr = s[i]
longest = substr
longest_len = len(substr)

while i < len(s) and j < len(s):
    if s[j] >= s[j - 1]:
        substr += s[j]
        j += 1
        if len(substr) > longest_len:
            longest = substr
            longest_len = len(substr)
    else:
        i += 1
        j = i + 1
        substr = s[i]
            
print("Longest substring in alphabetical order is: ", longest)

# Expected output: Longest substring in alphabetical order is: beggh