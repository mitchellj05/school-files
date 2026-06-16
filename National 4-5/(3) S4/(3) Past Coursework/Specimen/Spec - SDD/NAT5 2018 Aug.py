hits = []
total = 0

for x in range(6):
    temp = int(input("Enter the number of hits for player " + str(x) + ": > "))
    while temp < 0 or temp > 30:
        print("Error. Should be 0 - 30.")
        temp = int(input("Enter the number of hits: > "))

    hits.append(temp)

for x in range(len(hits)):
    total = total + hits[x]

average = total / len(hits)
average = round(average,2)

if total >= 50:
    points = 1

if average >= 10:
    points = 2

if points == 1:
    print("You earned a point.")

if points == 2:
    print("You earned a point and an additional point.")

if points == 0:
    print("You earned no point.")