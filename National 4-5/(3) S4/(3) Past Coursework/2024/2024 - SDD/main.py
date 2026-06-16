import random
next_song = []
total = 0

training_session = int(input("What is the length of the training session?: > "))
while training_session < 10 or training_session > 30:
    print("Error, please enter a number between 10 and 30.")
    training_session = int(input("What is the length of the training session?: > "))

training_session = training_session * 60

songCounter = 0
while total < training_session:
    next_song.append(int(input("What is the length of your next song?: > ")))
    total = total + next_song[songCounter]

    if total >= training_session:
        print("You've entered enough songs.")

    songCounter = songCounter + 1

counter = 1
print("Number of songs: " + str(songCounter))
foamMachine = random.randrange(1, songCounter +1)
for x in range(songCounter):
    print(str(x) + next_song[x])
    if foamMachine == x:
        print("Start foam machine")

print(str(total) + " second of music.")