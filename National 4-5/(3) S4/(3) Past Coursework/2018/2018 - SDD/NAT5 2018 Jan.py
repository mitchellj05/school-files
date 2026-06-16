readings_list = []
signal = ''

for x in range(5):
    reading = float(input("Enter a reading at location " + str(x+1) + ": > "))
    while reading < 0 or reading > 100:
        print("Error.")
        reading = float(input("Enter a reading at location " + str(x+1) + ": > "))

    readings_list.append(round(reading,0))

    if readings_list[x] > 80:
        signal = signal + 'S'

    elif reading < 30:
        signal = signal + 'P'

    else:
        signal = signal + 'M'

print (signal)

for x in range(5):
    print(readings_list[x])