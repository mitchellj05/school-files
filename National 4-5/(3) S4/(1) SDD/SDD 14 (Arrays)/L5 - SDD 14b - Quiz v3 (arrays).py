total = 0
questions = ['What is the capital of Scotland? > ', 
             'What is the capital of Spain? > ', 
             'What is the capital of Uruguay? > ']
answers = ['Edinburgh', 'Madrid', 'Montevideo']

for x in range(3):
    ans_in = input(questions[x])

    if ans_in == answers[x]:
        print('Correct!')
        total += 1

    else:
        print('Incorrect.')

print('Your total correct answers are: > ' + str(total))