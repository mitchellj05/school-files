def main():
    pupils, grades, noOfPupils = input_grades()
    validated_grades = calculate_grades(grades)
    display_data(pupils, validated_grades, noOfPupils)

def input_grades():
    pupils = []
    grades = []

    noOfPupils = int(input("Enter number of pupils: > "))

    for x in range(noOfPupils):
        pupil = input(f'Enter name of pupil {x+1}: > ')
        grade = input(f'Enter grade of pupil {x+1}: > ')

        pupils.append(pupil)
        grades_uppercase = grade.upper()
        grades.append(grades_uppercase)


    return pupils, grades, noOfPupils

def calculate_grades(grades):
    validated_grades = []

    for x in range(len(grades)):
        if grades[x] == chr(65):
            validated_grades.append('A')

        elif grades[x] == chr(66):
            validated_grades.append('B')

        elif grades[x] == chr(67):
            validated_grades.append('C')
        
        elif grades[x] == chr(68):
            validated_grades.append('D')

        elif grades[x] == chr(69):
            validated_grades.append('F')

        else:
            validated_grades.append("No Grade")

def display_data(pupils, validated_grades, noOfPupils):
    for x in range(noOfPupils):
        print(pupils[x], validated_grades[x])

main()