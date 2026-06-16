"""
Student Record (Object)

A Programmer
01/01/1970

Asks the user to enter the details of a record and store using a list. 
"""

from dataclasses import dataclass

@dataclass
class Record:
  """Basic class for storing data."""
  name: str
  age: int
  height: float
  town: str

def main():
  student = get_record()
  display_record(student)

def get_record():
  """Read in students details, return an object"""
  name = input('Please enter name: ')
  age = int(input('Please enter age: '))

  while age < 1 or age > 150:
    print(f'Error, please enter an age between 1 and 150.')
    age = int(input('Please enter age: '))

  height = float(input('Please enter height: '))
  
  while height < 1 or height > 2.5:
    print(f'Error, please enter a height between 1m and 2.5m.')
    height = float(input('Please enter height: '))

  town = input('What is your home town?: ')

  return Record(name, age, height, town)

def display_record(record):
  """Print contents of object"""
  print(record.name, record.age, record.height, record.town)


main()
