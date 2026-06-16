"""
Cities (List of Objects)

A Programmer
01/01/1970

Reads in the data, creates reccords and stores the records in a list.
"""
from dataclasses import dataclass


@dataclass
class City:
    city: str
    country: str
    population: float
    language: str


def main():
    count = 3
    entries = get_record(count)
    display_record(entries)
    write_record(entries)


def get_record(number):
    cities = []

    for x in range(number):
        city = input('Enter city > ')
        country = input('Enter country > ')
        population = float(input('Enter population > '))
        language = input('Enter main language > ')

        cities.append(City(city, country, population, language))

    return cities


def display_record(cities):
    for record in cities:
        print(record.city, record.country, record.population, record.language)

def write_record(cities):
  pass


main()
