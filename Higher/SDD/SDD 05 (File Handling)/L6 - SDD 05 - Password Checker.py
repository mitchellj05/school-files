def main():
    password = get_password()
    check_password(password)   

def get_password():
    file = open('password.txt','r')
    text_in = file.read()
    file.close()

    return text_in

def check_password(password):

    attempts = 0
    user_input = input(f'Enter password: > ')

    while user_input != password and attempts < 5:
        print('Access Denied.')
        attempts = attempts + 1
        if attempts >= 5:
            print('Exceeded maximum number of attempts.')
            return
        user_input = input(f'Enter password: > ')

    else:
        print('Access Granted.')

        
main()