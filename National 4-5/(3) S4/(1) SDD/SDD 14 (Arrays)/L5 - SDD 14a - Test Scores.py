names = []
scores = []

for x in range(5):
    names.append(input("Enter student " + str(x+1) + " name: > "))

    temp = int(input("Enter test result: > "))
    while temp < 0 or temp > 150:
        print("ERROR, please rewrite your test result.")
        temp = int(input("Enter test result: > "))

    scores.append(temp)

for x in range(5):
    if scores[x] / 150 * 100 >= 70:
        print(names[(int(x))] + " has passed")
    else:
        print(names[(int(x))] + " has failed")
