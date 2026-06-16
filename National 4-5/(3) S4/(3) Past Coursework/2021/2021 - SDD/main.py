sentence = []
total = 0
average = 0

noOfWords = int(input("Enter the number of words in the sentence: "))

for x in range(noOfWords):
    words = input("Enter word " + str(x+1) + " from the sentence: ")
    sentence.append(words)
    total = total + len(words)

for x in range(noOfWords):
    print(sentence[x])

average = str(total/noOfWords)

print("The average length of the words in the sentence is: " + average)

if average < str(5):
    print("Short words - suitable for junior readers")

elif average >= str(5) and average <= str(7):
    print("Medium words - suitable for teen readers")

else:
    print("Long words - suitable for senior readers")