test = int(input("Enter your test result: > "))

if test >= 90:
    print("You have passed. (A)")
elif test >= 70:
    print("You have passed. (B)")
elif test >= 50:
    print("You have passed. (C)")
elif test >= 40:
    print("You have passed. (D)")
elif test < 40:
    print("You have failed. (F)")