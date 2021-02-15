"""
Given the balance and annual interest rate...
Write a program that calculates the minimum fixed monthly payment needed in order pay off a credit card balance within 12 months.
"""

# Given:
balance = 3329
annualInterestRate = 0.2

# Initialize variables:
monthlyInterest = annualInterestRate / 12.0
minMonthly = 0
endBalance = float(balance)

# Calculate balance for every month
while True:
    for month in range(1, 13):
        monthlyUnpaid = endBalance - minMonthly
        endBalance = monthlyUnpaid + monthlyInterest * monthlyUnpaid
        
    if endBalance <= 0:
        print("Lowest Payment: " + str(minMonthly))
        break
    else:
        minMonthly += 10
        endBalance = float(balance)