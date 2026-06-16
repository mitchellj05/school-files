score = 0

q1 = input("What's the capital of Spain? > ")
q2 = input("What's the best TV show of all time? > ")
q3 = input("Which country won the 2020 Olympics > ")
q4 = int(input("What is 10+3? > "))

if q1 == 'Madrid':
    score = score + 1

if q2 == 'The Sopranos':
    score = score + 1

if q3 == 'United States':
    score = score + 1

if q4 == '13':
    score = score + 1

if score == '4':
    print("You have passed 100%")

elif score == '3':
    print("You have passed 75%")

elif score == '2':
    print("You have passed 50%")

elif score == '1':
    print("You have failed 25%")

elif score == '0':
    print("You have failed 0%")