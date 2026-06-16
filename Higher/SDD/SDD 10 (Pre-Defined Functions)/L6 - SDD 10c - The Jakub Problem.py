import math

def main():
    num = get_data()
    rounded = maths(num)
    display_data(rounded)

def get_data():
    num = float(input('Enter number: '))
    return num

def maths(num):
    rounded = math.ceil(num)
    return rounded

def display_data(rounded):
    print(rounded)

main()
