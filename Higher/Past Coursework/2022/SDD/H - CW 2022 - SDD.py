from dataclasses import dataclass

@dataclass
class Record:
    town: str
    mammal: str
    date: str
    age: int

def main():
    sightings = readSightings()
    oldest = findOldest(sightings)
    displayOldest(oldest)
    displayChosenDates(sightings)
    countEachDate(sightings)

def readSightings():
    sightings = []

    file = open("mammals.txt", "r")
    for line in file:
        data = line.strip().split(",")

        town = data[0]
        mammal = data[1]
        date = data[2]
        age = int(data[3])

        sightings.append(Record(town, mammal, date, age))

    file.close()
    return sightings

def findOldest(sightings):
    oldest = sightings[0]

    for x in range(len(sightings)):
        if sightings[x].age > oldest.age:
            oldest = sightings[x]

    return oldest

def displayOldest(oldest):
    print("The age of the oldest walker is", oldest.age)

def firstUpper(string):
    firstChar = ord(string[0])

    if firstChar >= 97 and firstChar <= 122:
        firstChar = firstChar - 32
        string = chr(firstChar) + string[1:]

    return string

def displayChosenDates(sightings):
    town = input("Enter town: ")
    town = firstUpper(town)

    mammal = input("Enter mammal: ")
    mammal = firstUpper(mammal)

    print("The dates of sightings were:")

    for sighting in sightings:
        if sighting.town == town and sighting.mammal == mammal:
            print(sighting.date)

def countEachDate(sightings):
    dayToCount = sightings[0].date
    count = 1

    for x in range(len(sightings)):
        if sightings[x].date == dayToCount:
            count = count + 1
        
        else:
            print(dayToCount, count)
            dayToCount = sightings[x].date
            count = 1

    print(dayToCount, count)

main()