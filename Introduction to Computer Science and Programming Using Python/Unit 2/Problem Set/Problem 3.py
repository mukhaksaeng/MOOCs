"""
Given the balance and annual interest rate...
Write a program that calculates the minimum fixed monthly payment needed in order pay off a credit card balance within 12 months using bisection search.
"""

# Given:
balance = 999999
annualInterestRate = 0.18

# Initialize variables:
monthlyInterest = annualInterestRate / 12.0
high = (balance * (1 + monthlyInterest) ** 12) / 12.0
low = balance / 12
endBalance = float(balance)
tol = 0.1    # to the cent

# Calculate balance for every month
while True:
    endBalance = float(balance)
    minMonthly = (low + high) / 2
    
    for month in range(1, 13):
        monthlyUnpaid = endBalance - minMonthly
        endBalance = monthlyUnpaid + monthlyInterest * monthlyUnpaid
        
    if endBalance < -tol:
        high = minMonthly
    elif endBalance > tol:
        low = minMonthly
    else:
        print("Lowest Payment: " + str(round(minMonthly, 2)))
        break


