from dataclasses import dataclass

@dataclass
class Student():
    id: int
    name: str
    score: float
    percentage: int
    grade: str

def main():
    studentRecord = get_records()
    display_records(studentRecord)
    
def get_records():
    record = []
    noOfStudents = int(input('Please enter number of students: > '))
    get_student_record(record, noOfStudents)
    calc_percentages(record)

    return record

def get_student_record(record, noOfStudents): 

    for x in range(noOfStudents):
        name_in = input(f'Please enter student {x+1} name: > ')
        score_in = input(f'Please enter student {x+1} score: > ')

        record.append(Student(id=x+1, name=name_in, score=float(score_in), percentage=0, grade=''))
    return record

def calc_percentages(record):
    for student in record:
        student.percentage = round(student.score / 160 * 100)
    assign_grades(record)

def assign_grades(record):
    for student in record:
        if student.percentage >= 70:
            student.grade = 'A'
        elif student.percentage >= 60:
            student.grade = 'B'
        elif student.percentage >= 50:
            student.grade = 'C'
        elif student.percentage >= 40:
            student.grade = 'D'
        else:
            student.grade = 'F'

def display_records(studentRecord):
    print("\nID\tName\tScore\tPercentage\tGrade")
    for Student in studentRecord:
        print(f"{Student.id}\t{Student.name}\t{Student.score}\t{Student.percentage}\t{Student.grade}")

    print()
    print('1 - Change an entry')
    print('2 - Exit')
    print()
    option = int(input("Select an option: > "))

    if option == 1:
        idChange = int(input('Enter the ID of the student to change: > '))

        for student in studentRecord:
            if Student.id == idChange:
                new_name = input("Enter new student name: > ")
                new_score = int(input("Enter new student score: > "))

                student.name = new_name
                student.score = new_score
                student.percentage = round(new_score / 160 * 100)


                if student.percentage >= 70:
                    student.grade = 'A'
                elif student.percentage >= 60:
                    student.grade = 'B'
                elif student.percentage >= 50:
                    student.grade = 'C'
                elif student.percentage >= 40:
                    student.grade = 'D'
                else:
                    student.grade = 'F'

                print("Records updated successfully.")
                break

            else:
                print("No student found with that ID.")

    elif option == 2:
        print("Exiting.")

main()