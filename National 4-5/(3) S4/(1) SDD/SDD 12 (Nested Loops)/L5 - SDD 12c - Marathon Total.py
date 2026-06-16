total = 0

for y in range(5):
    for x in range(2):
        distance = int(input("How far did you run on week " + str(y+1) + ", day " + str(x+1) + "> "))

        total = total + distance

print("You have travelled a total of: " + str(total))