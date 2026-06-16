#Create a program that asks the user to type in 10 names. 
#The program will then ask the user to type in a name they would like to search for. 
#The program should then display the position of that name within the array.  

def main():
    names_list = get_data()
    pos = name_search(names_list)
    display_data(pos)

def get_data():
    names = []

    for x in range(10):
        names.append(input(f'Enter name {x+1}: '))

    return names

def name_search(names):
    position = -1

    print()
    search = input("Search for: ")

    for x in range(len(names)):
        if names[x] == search:
            position = x

    return position

def display_data(position):
    if position > -1:
        print(f'Name was found at position {position}')

    else:
        print('Name was not found.')

main()