def main():
    company = []
    numEmployees = []
    ceoSalary = []
    
    readFile(company, numEmployees, ceoSalary)
    salaryDifference(company, ceoSalary)
    employeeStats(numEmployees)

def readFile(company, numEmployees, ceoSalary):
    file = open("companies.csv", "r")

    for line in file:
        data = line.strip().split(",")

        if len(data) == 3:
            company.append(data[0])
            numEmployees.append(int(data[1]))
            ceoSalary.append(int(data[2]))

    file.close()

    return company, numEmployees, ceoSalary

def findMaxPos(array):
    maxPos = 0

    for x in range(1, len(array)):
        if array[x] > array[maxPos]:
            maxPos = x

    return maxPos

def salaryDifference(company, ceoSalary):
    chosenCompany = input("Enter the name of chosen company: ")
    found = False

    highestPos = findMaxPos(ceoSalary)

    for x in range(len(company)):
        if company[x] == chosenCompany:
            found = True

            difference = ceoSalary[highestPos] - ceoSalary[x]
            print(company[highestPos], "company has the highest paid CEO.")
            print("The", chosenCompany, "CEO earns £" + str(difference), "less than the highest paid CEO.")

    if found == False:
        print("Company not found")

def employeeStats(numEmployees):
    maxPos = findMaxPos(numEmployees)
    maximumEmployees = numEmployees[maxPos]
    count = 0

    for x in range(len(numEmployees)):
        if numEmployees[x] >= maximumEmployees * 0.9:
            count = count + 1

    print("The highest number of employees employed by a single company is", maximumEmployees)
    print(count, "companies employ within 10% of", maximumEmployees)

main()