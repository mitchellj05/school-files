def main():
    apples, pupils = get_data()
    total = calculate_apples(apples, pupils)
    display_data(total, apples, pupils)

def get_data():
    
    apples = int(input("Enter number of apples: > "))
    pupils = int(input("Enter number of pupils: > "))

    return apples,pupils

def calculate_apples(apples, pupils):
    total = 0
    total = apples % pupils

    return total


def display_data(total, apples, pupils):
    print(f'There are {apples} apples and {pupils} pupils, the remainder of apples is {total}')


main()