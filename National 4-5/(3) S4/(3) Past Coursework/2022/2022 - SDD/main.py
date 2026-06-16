totalWeight = 0

for x in range(5):
    foodWeight = int(input("Enter food weight for container " + str(x+1) + ": "))

    while foodWeight < 0 or foodWeight > 200:
        print("Invalid, a single container can only hold up to 200g.")
        foodWeight = int(input("Enter food weight for container " + str(x+1) + ": "))
        

    totalWeight = totalWeight + foodWeight

dogSize = input("Please enter the size of your dog: ")

if dogSize == 'small' and totalWeight > 110 and totalWeight < 140:
    recommendations = "This weight of food is suitable for your dog."

elif dogSize == 'medium' and totalWeight > 330 and totalWeight < 440:
    recommendations = "This weight of food is suitable for your dog."

elif dogSize == 'large' and totalWeight > 690 and totalWeight < 900:
    recommendations = "This weight of food is suitable for your dog."

else:
    recommendations = "This weight of food is not recommended for the size of your dog."

averageWeight = totalWeight / 5
round(averageWeight, 1)

for x in range(5):
    print("The weight of food in container " + str(x+1) + " is " + str(averageWeight) + "g.")

print("The total weight is: " + str(totalWeight) + "g.")
print("The average weight is: " + str(averageWeight) + "g.")
print(recommendations)