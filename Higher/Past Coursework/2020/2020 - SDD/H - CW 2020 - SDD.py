def main():
    firstName, surname, category, password = getData()
    categoryArray = processMembers(firstName, surname, category, password)
    displayData(categoryArray)

def getData():
    firstName = input("Enter first name: ")
    surname = input("Enter surname: ")
    category = input("Enter category: ")
    password = getValidPassword()
    return firstName, surname, category, password

def getValidPassword():
    valid = False

    while valid == False:
        password = input("Enter password: ")

        firstChar = ord(password[0])
        lastChar = ord(password[-1])

        if firstChar >= 65 and firstChar <= 90 and lastChar >= 35 and lastChar <= 37:
            valid = True
        else:
            print("Invalid password")

    return password

def processMembers(newFirstName, newSurname, newCategory, newPassword):
    firstName = []
    surname = []
    category = []
    password = []

    file = open("members.txt", "r")
    for line in file:
        data = line.strip().split(",")
        
        firstName.append(data[0])
        surname.append(data[1])
        category.append(data[2])
        password.append(data[3])
    
    file.close()

    firstName.append(newFirstName)
    surname.append(newSurname)
    category.append(newCategory)
    password.append(newPassword)

    print("Our members are:")
    for x in range(len(firstName)):
        print(firstName[x], surname[x], category[x])

    return category

def displayData(category):
    adultCount = 0
    juniorCount = 0
    seniorCount = 0

    for item in category:
        if item == "Adult":
            adultCount += 1
        elif item == "Junior":
            juniorCount += 1
        elif item == "Senior":
            seniorCount += 1

    totalMembers = len(category)

    print("There are currently", adultCount, "Adult members")
    print("There are currently", juniorCount, "Junior members")
    print("There are currently", seniorCount, "Senior members")
    print("Total current membership is", totalMembers)

main()