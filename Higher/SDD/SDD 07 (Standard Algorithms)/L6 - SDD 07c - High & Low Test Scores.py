def main():
    names, scores = get_data()
    highest_name, highest_score = find_highest(names, scores)
    lowest_name, lowest_score = find_lowest(names, scores)
    display_data(highest_name,highest_score,lowest_name,lowest_score)

def get_data():
    names = []
    scores = []
    
    noOfNames = int(input("Enter number of pupils: > "))

    for x in range(noOfNames):
        names.append(input(f"Enter pupil {x+1} name: > "))
        scores.append(int(input(f"Enter pupil {x+1} score: > ")))

    return names, scores

def find_highest(names, scores):
    max_name = names[0]
    max_score = scores[0]

    for x in range(len(scores)):
        if scores[x] > max_score:
            max_score = scores[x]
            max_name = names[x]

    return max_name, max_score 

def find_lowest(names, scores):
    min_name = names[0]
    min_score = scores[0]

    for x in range(len(scores)):
        if scores[x] < min_score:
            min_score = scores[x]
            min_name = names[x]

    return min_name, min_score  

def display_data(highest_name, highest_score, lowest_name, lowest_score):
    print()
    print(f"{highest_name} got the highest score: {highest_score}.")
    print(f"{lowest_name} got the lowest score: {lowest_score}.")


main()