name = input("What is your name? > ")
year = int(input("What year group are you in? > "))

while year < 1 or year > 6:
    print("Invalid year. Please try again.")
    year = int(input("What year group are you in? > "))

print("Ok.")