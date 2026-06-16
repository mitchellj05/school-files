noOfItems = 0
bill = 0
discount = 0

noOfItems = int(input("How many items did you purchase?: "))
counter = 0

print("KEY: Tea = 't' : Coffee = 'c' : Biscuit = 'b'")

while counter != noOfItems:

    itemType = input("What item type did you purchase?: ")

    if itemType == 't':
        bill = bill + 1.85
        counter = counter + 1

    elif itemType == 'c':
        bill = bill + 2.25
        counter = counter + 1

    else:
        bill = bill + 3.05
        counter = counter + 1

import random

discount = random.randint(1, 10)

if discount == 1:
    bill = 0

elif discount >= 2 and discount <= 6:
    bill = bill / 2

else:
    print("Your random number was: " + str(discount) + ", no discount.")

print("Your bill is: £" + str(round(bill, 2)))
