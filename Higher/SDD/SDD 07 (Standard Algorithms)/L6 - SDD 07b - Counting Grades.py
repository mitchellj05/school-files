def main():
    grades = get_data()
    noOfAs, noOfBs, noOfCs, noOfDs, noOfFs = count_grades(grades)
    display_data(noOfAs, noOfBs, noOfCs, noOfDs, noOfFs)

def get_data():
    grades = []

    noOfGrades = int(input("Enter number of grades: > "))
    print("Only enter the letters: 'A' 'B' 'C' 'D' 'F'.")

    for x in range(noOfGrades):
        grades.append(input(f'Enter grade {x+1}: > '))

    return grades

def count_grades(grades):
    noOfAs = 0
    noOfBs = 0
    noOfCs = 0
    noOfDs = 0
    noOfFs = 0

    for x in range(len(grades)):
        if grades[x] == "A":
            noOfAs += 1

        elif grades[x] == "B":
            noOfBs += 1

        elif grades[x] == "C":
            noOfCs += 1

        elif grades[x] == "D":
            noOfDs += 1

        elif grades[x] == "F":
            noOfFs += 1

    return noOfAs, noOfBs, noOfCs, noOfDs, noOfFs

def display_data(noOfAs, noOfBs, noOfCs, noOfDs, noOfFs):
    print(f'Number of As = {noOfAs})
    print(f'Number of Bs = {noOfBs})
    print(f'Number of Cs = {noOfCs})
    print(f'Number of Ds = {noOfDs})
    print(f'Number of Fs = {noOfFs})

          
main()