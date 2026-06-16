Drama= input('Do you take Drama? > ')
English= input('Do you take English? > ')
Music= input('Do you take Music? > ')

if Drama =="Yes" and English =="Yes" and Music == "Yes":
    print("You are eligible to attend the London trip.")

if Drama =="Yes" and English =="No" and Music == "Yes":
    print("You are eligible to attend the London trip.")

if Drama =="No" and English =="Yes" and Music == "Yes":
    print("You are eligible to attend the London trip.")

if Drama =="Yes" and English =="Yes" and Music == "No":
    print("You are eligible to attend the London trip.")

if Drama =="No" and English =="Yes" and Music == "No":
    print("You are NOT eligible to attend the London trip.")

if Drama =="Yes" and English =="No" and Music == "No":
    print("You are NOT eligible to attend the London trip.")

if Drama =="No" and English =="No" and Music == "Yes":
    print("You are NOT eligible to attend the London trip.")

if Drama =="No" and English =="No" and Music == "No":
    print("You are NOT eligible to attend the London trip.")