def main():
    firstname, surname, student_code = get_data()
    noOfRoboticsStudents = calculate_students(student_code)
    display_data(firstname, surname, noOfRoboticsStudents)

def get_data():
    firstname = []
    surname = []
    student_code = []

    file = open('usernames.csv','r')
    
    for line in file:
        data = line.replace('"', '').strip().split(',')

        firstname.append(data[0])
        surname.append(data[1])
        student_code(data[2])

    file.close()

    return firstname, surname, student_code

def calculate_students():
    pass

def display_data():
    pass

main()