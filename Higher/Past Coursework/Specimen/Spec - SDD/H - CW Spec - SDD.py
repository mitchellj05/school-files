def main():
    beachName = []
    rating = []

    readFile(beachName, rating)

    average = calcAverageTested(rating)
    print("Average rating for all beaches tested is", round(average, 2))

    chosenRating = int(input("Enter a rating (1-5): "))
    displayBeaches(beachName, rating, chosenRating)

def readFile(beachName, rating):
    file = open("beachData.csv", "r")

    for line in file:
        data = line.strip().split(",")
        beachName.append(data[0])
        rating.append(int(data[1]))

    file.close()

def calcAverageTested(rating):
    total = 0
    count = 0

    for x in range(len(rating)):
        if rating[x] >= 1 and rating[x] <= 4:
            total = total + rating[x]
            count = count + 1

    average = total / count
    return average

def displayBeaches(beachName, rating, chosenRating):
    for x in range(len(rating)):
        if rating[x] == chosenRating:
            print(beachName[x])

main()