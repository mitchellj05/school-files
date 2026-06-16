#Create a program that will ask the user for their first name, second name and their year of birth. 
#This program should then suggest a username that they could use by taking the first initial from the first name, 
#the whole of the second name and the last two numbers of the year of birth. 
#For example Brian Frew who was born in 1982 would have the following user name “BFrew82”. 

def main():
    firstname, secondname, yearofbirth = data()
    username = generate_username(firstname, secondname, yearofbirth)
    display_username(username)

def data():
    firstname = input("Enter first name: > ")
    secondname = input("Enter second name: > ")
    yearofbirth = input("Enter year of birth: > ")

    return firstname, secondname, yearofbirth

def generate_username(firstname, secondname, yearofbirth):
    username = firstname[0] + secondname + yearofbirth[2:4]

    return username

def display_username(username):
    print(username)

main()