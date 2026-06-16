#Create a program that will ask the user for their first name 
#and then their second name. Once the user has done this, 
#the program must “build” a string that stores their full name. 
#Display the user’s full name on the screen.  

def main():
    first_name, second_name = names()
    full_name = create_fullname(first_name, second_name)
    display_data(full_name)

def names():
    first_name = input("Please enter your first name: > ")
    second_name = input("Please enter your last name: > ")

    return first_name, second_name

def create_fullname(first_name, second_name):
    full_name = first_name + " " + second_name

    return full_name

def display_data(full_name):
    print(full_name)

main()