"""
Zoo Records (List of Object)

A Programmer
01/01/1970

Reads in the data, creates reccords and stores the records in a list.

TODO: Add the record to a list so that we have a list of objects.
"""
from dataclasses import dataclass 

@dataclass 
class Animal: 
  """Basic class for storing data."""
  
  animal: str 
  endangered: str 
  continent: str 
  avg_lifespan: float 
  enclosure: str 

def main():
  animalrecord = get_record()
  display_record(animalrecord)

def get_record():
  """Read in students details, return an object"""

  # TODO: A list for storing the indiviual records (lists)
  record = []
  num_records = int(input("How many records are you adding?: > "))
  
    # TODO: Loop for number of record entries
  for x in range(num_records):
    animal_in = input("Enter type of animal > ")
    
    endangered_in = input('Endangered > ')
    while endangered_in != "Yes" and endangered_in != "No":
      endangered_in = input('Endangered (must be Yes or No)> ')
      
    continent_in = input('Continent > ')
      
    avglifespan_in = float(input('Lifespan > '))
    while avglifespan_in < 0 or avglifespan_in > 500:
      avglifespan_in = float(input('Lifespan > '))
      
    enclosure_in = input('Enclosure > ')

    # TODO: Add record to list
    record.append(Animal(animal_in, endangered_in, continent_in, avglifespan_in, enclosure_in))

    # TODO: Return list instead of single record
  return record
  
def display_record(animal_records):
  """Print contents of object"""

  # TODO: Replace this with printing all records
  for record in animal_records:
    print(record)

main()
