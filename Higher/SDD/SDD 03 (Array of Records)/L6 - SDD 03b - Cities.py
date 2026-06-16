"""
Cities (List of Objects)

A Programmer
01/01/1970

Reads in the data, creates reccords and stores the records in a list.
"""
from dataclasses import dataclass 

@dataclass
class City():
  city: str 
  country: str 
  population: float 
  language: str 


def main():
  cityrecord = get_record()
  display_record(cityrecord)

def get_record():
  cityRecord = []
  noOfCities = int(input('How many cities are being entered?: > '))

  for x in range(int(noOfCities)):
    city = input(f'Enter name of City {x+1}: > ')
    country = input(f'Enter country that City {x+1} is in: > ')
    population = input(f'Enter population of City ' + str(x+1) + ': > ')
    language = input(f'Enter main language of City {x+1}: > ')
    
    cityRecord.append(City(city, country, population, language))
  
  return cityRecord

def display_record(city_record):
  
  for cityRecord in city_record:
    print(cityRecord)

main()
