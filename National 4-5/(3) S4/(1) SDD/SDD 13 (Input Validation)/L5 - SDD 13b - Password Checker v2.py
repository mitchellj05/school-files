password = input("Please enter your password > ")
while password != 'ThisIsATest':
    print("Invalid password. Please try again.")
    password = input("Please enter your password > ")

else:
    print("Your password was successful.")
    