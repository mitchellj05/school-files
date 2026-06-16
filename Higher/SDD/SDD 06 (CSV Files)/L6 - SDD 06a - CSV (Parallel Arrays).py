def main():
    names, scores = get_data()
    check_scores(scores)
    display_data(names, scores)

def get_data():
    names = []
    scores = []
    
    file = open('data_in_6a.csv','r')
    for line in file:
        data = line.replace('"', '').strip().split(',')

        names.append(data[0])
        scores.append(int(data[1]))

    file.close()
    return names, scores

def check_scores(scores, cutoffscore):
    for lines in 

def display_data(names, scores):
    pass

main()
