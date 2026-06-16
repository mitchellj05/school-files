from dataclasses import dataclass

@dataclass
class Record:
    forename: str
    surname: str
    distance: float

def main():
    members = listOfMembers()
    furthest = calculateFurthest(members)
    displayFurthest(furthest)
    winners(members, furthest)

def listOfMembers():
    members = []

    file = open("members.txt", "r")
    for line in file:
        data = line.strip().split(",")
       
        forename = data[0]
        surname = data[1]
        distance = float(data[2])
       
        members.append(Record(forename, surname, distance))
    
    file.close()

    return members

def calculateFurthest(members):
    furthest = members[0].distance

    for x in range(len(members)):
        if members[x].distance > furthest:
            furthest = members[x].distance

    return furthest

def displayFurthest(furthest):
    print("The furthest distance walked is", furthest)

def winners(members, furthest):
    file = open("results.txt", "w")
    file.write("The prize winning members are:\n")

    for member in members:
        if member.distance > 0.7 * furthest:
            file.write(member.forename + " " + member.surname + "\n")

    file.close()

main()