import random
number = random.randrange(20)

guesses = 0

answer = int(input("Pick a number between 1 and 20: > "))

while answer != number:
    if answer > number:
        print("Guess lower!")

    else:
        print("Guess higher!")

    answer = int(input("Pick a number between 1 and 20: > "))

print("Well done!")