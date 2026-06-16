def main():
    attraction, category, visitors, daysOpen, height = get_data()
    rideInfo(attraction, visitors)
    serviceFile(attraction, category, daysOpen)
    heightCount(height)

def get_data():
    attraction = []
    category = []
    visitors = []
    daysOpen = []
    height = []

    file = open("attractions.csv", "r")
    for line in file:
        data = line.strip().split(",")

        attraction.append(data[0])
        category.append(data[1])
        visitors.append(int(data[2]))
        daysOpen.append(int(data[3]))
        height.append(data[4])

    file.close()
    return attraction, category, visitors, daysOpen, height

def rideInfo(attraction, visitors):
    least = visitors[0]
    most = visitors[0]

    for x in range(1, len(visitors)):
        if visitors[x] < least:
            least = visitors[x]
        if visitors[x] > most:
            most = visitors[x]

    print("Least visited attraction(s):")
    for x in range(len(visitors)):
        if visitors[x] == least:
            print(attraction[x])

    print("Most visited attraction(s):")
    for x in range(len(visitors)):
        if visitors[x] == most:
            print(attraction[x])

def serviceFile(attraction, category, daysOpen):
    file = open("service.csv", "w")

    for x in range(len(attraction)):
        if category[x] == "Roller Coaster":
            days = daysOpen[x] % 90
            if (90 - days) <= 7:
                file.write(attraction[x] + "\n")

    file.close()

def heightCount(height):
    count = 0

    for item in height:
        if item[0] == "1":
            count = count + 1

    print("Number of attractions with height restriction 1.0m and above:", count)

main()