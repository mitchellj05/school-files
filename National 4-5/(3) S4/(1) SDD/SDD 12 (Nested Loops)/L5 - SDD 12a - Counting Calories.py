meals = ['breakfast', 'lunch', 'dinner']
total = 0

for x in range(5):
    for y in range(3):
        cals = int(input("Person " + str(x+1) + ", how many calories did you have for your " + meals[y] + " > "))

        total = total + cals

print('The total calories gained is: ' + str(total))