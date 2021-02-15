"""
Given the balance, annual interest rate and monthly payment rate...
Write a program to calculate the credit card balance after one year if a person only pays the minimum monthly payment required by the credit card company each month.
"""

# Given:
balance = 484
annualInterestRate = 0.2
monthlyPaymentRate = 0.04

# Initialize variables:
monthlyInterest = annualInterestRate / 12.0

# Calculate balance for every month
for month in range(1, 13):
    minMonthly = monthlyPaymentRate * balance
    monthlyUnpaid = balance - minMonthly
    balance = monthlyUnpaid + monthlyInterest * monthlyUnpaid
    
print("Remaining balance: " + str(round(balance, 2)))