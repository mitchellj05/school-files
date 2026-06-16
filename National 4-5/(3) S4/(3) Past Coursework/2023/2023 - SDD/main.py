journeyStage = []
milesTravelled = []
totalMiles = 0
totalJourneyCost = 0

startMileage = int(input("What is the mileage at the start of the journey?: "))

chargingStations = int(input("How many charging stations did you visit during your journey?: "))

for x in range(chargingStations):
    currentMileage = int(input("What is your current mileage at station " + str(x+1) + "?: "))
    rating = int(input("What is the current charging rate at this charging station? "))

    while rating != 7 and rating != 22 and rating != 50:
        print("Error, please enter a valid reading.")
        rating = int(input("What is the current charging rate at this charging station? "))

    if rating == 7:
        pricePerMile = 0

    elif rating == 22:
        pricePerMile = 0.005

    else:
        pricePerMile = 0.01

    milesTravelled.append(currentMileage - startMileage)
    startMileage == currentMileage
    journeyStage.append(pricePerMile * milesTravelled[x])

for x in range(chargingStations):

    print('£' + str(journeyStage[x]))
    totalJourneyCost = totalJourneyCost + journeyStage[x]
    totalMiles = totalMiles + milesTravelled[x]

print("The total cost of your journey is £" + str(round(totalJourneyCost,3)) + ".")
print("Your total miles travelled is " + str(totalMiles) + ".")