import random
numbers = []

while len(numbers) < 6:
    num = random.randrange(1, 60)

    #Checks to see if number is in list
    #If not, found = false
    found = False

    #If the same number is in list, found = true
    for x in range(len(numbers)):
        if numbers[x] == num:
            found = True
            break

    if not found:
        numbers.append(num)

print(numbers)