import random
endings = ['ing', 'end', 'axe', 'gex', 'goh']
names = []

usernames = int(input("How many usernames are being generated?: "))

for x in range(usernames):
    temp = str(input("Enter the first three letters of student " + str(x+1) + "'s age: "))
    
    if len(temp) != 3:
        print("Error, please enter the first three letters.")
        temp = str(input("Enter the first three letters of student " + str(x+1) + "'s age: "))

    num = random.randint(0, 4)
    names.append(temp + endings[num])

for x in range(usernames):
    print("Username for student " + str(x+1) + ": " + names[x])