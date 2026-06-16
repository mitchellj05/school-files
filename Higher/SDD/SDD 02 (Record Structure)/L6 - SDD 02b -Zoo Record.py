"""
Zoo Record (Object)

A Programmer
01/01/1970

Asks the user to enter the details of a record and store using an object. 
"""
from dataclasses import dataclass

@dataclass
class Animal:
  animal: str
  endangered: str
  continent: str
  lifespan: float
  enclosure: str

def main():
  zoo = get_record()
  display_record(zoo)

def get_record():
  animal = input(f'Please enter the name of the animal: > ')
  endangered = input(f'Is the animal endangered?: > ')

  if endangered != 'Yes' or endangered != 'No':
    print("Error, please enter 'Yes' or 'No'")
    endangered = input(f'Is the animal endangered?: > ')

  continent = input(f'What continent is this animal from?: > ')
  lifespan = float(input('What is the average lifespan of this animal?: > '))
  enclosure = input(f'What enclosure does this animal live in?: > ')

  return Animal(animal, endangered, continent, lifespan, enclosure)

def display_record(Animal):
  print(Animal.animal, Animal.endangered, Animal.continent, Animal.lifespan, Animal.enclosure)

main()
