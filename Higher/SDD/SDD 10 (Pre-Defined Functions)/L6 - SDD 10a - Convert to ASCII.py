def main():
    string = text_input()
    converted = conversion(string)
    print_ascii(converted)

def text_input():
    string = input("Please enter the text to be converted: > ")

    return string

def conversion(stringArray):
    converted = []

    for x in range(len(stringArray)):
        conversion = ord(stringArray[x])
        converted.append(conversion)

    return converted

def print_ascii(converted):
    for x in range(len(converted)):
      print(converted[x])


main()