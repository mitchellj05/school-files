name = input("Please enter your name > ")
age = int(input("Please enter your age > "))
while age < 0 or age > 120:
    print("Invalid age. Must be between 0 and 120")
    age = int(input("Please enter your age > "))
