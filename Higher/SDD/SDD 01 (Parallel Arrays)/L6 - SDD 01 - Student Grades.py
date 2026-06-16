"""
Student Grades (Lists)

Joseph Mitchell
25/08/2025

Ask the user to enter 10 names and scores, calculate percentages, assign grades and display results.
"""
def main():
  num_students = int(input(f'How many students are there?: > '))

  students, scores = get_data(num_students)
  percentages = calc_percentages(scores, num_students)
  grades = assign_grades(percentages, num_students)
  display_data(students, scores, percentages, grades)

def get_data(count):
  names = []
  scores = []

  for x in range(count):
    names.append(input(f'Please enter the name of student {x+1}: > '))
    scores.append(int(input(f'Please enter the score for {names[x]}: > ')))

  return names, scores

def calc_percentages(scores, num_students):
  percentages = []

  for x in range(num_students):
    percentages.append(round((scores[x])/160*100, 0))

  return percentages

def assign_grades(percentages, num_students):
  grades = []
  
  for x in range(num_students):
    if percentages[x] >= 70:
      grades.append("A")

    elif percentages[x] >= 60:
      grades.append("B")

    elif percentages[x] >= 50:
      grades.append("C")

    elif percentages[x] >= 40:
      grades.append("D")

    elif percentages[x] < 40: 
      grades.append("Fail") 

  return grades

def display_data(names, scores, percentages, grades):
  for x in range(len(names)):
    print(f'{names[x]} got {scores[x]}, which is {percentages[x]}% ({grades[x]})')

main()
