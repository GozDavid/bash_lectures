def if_example():
    number = 23
    guess = int(input('Enter an integer : '))

    if guess == number:
        # New block starts here
        print('Congratulations, you guessed it.')
        print('(but you do not win any prizes!)')
        # New block ends here
    elif guess < number:
        # Another block
        print('No, it is a little higher than that')
        # You can do whatever you want in a block ...
    else:
        print('No, it is a little lower than that')
        # you must have guessed > number to reach here

    print('if_example Done')
    # This last statement is always executed,
    # after the if statement is executed.


def while_example():
    number = 23
    running = True

    while running:
        guess = int(input('Enter an integer : '))

        if guess == number:
            print('Congratulations, you guessed it.')
            # this causes the while loop to stop
            running = False
        elif guess < number:
            print('No, it is a little higher than that.')
        else:
            print('No, it is a little lower than that.')
    else:
        print('The while loop is over.')
        # Do anything else you want to do here
    print('while_example Done')

def for_example(iter_num):
    for i in range(1, iter_num):
        print(i)
    else:
        print('The for loop is over')



#========= BODY ==========

print("Choose if try")
print("1. if statement")
print("2. while statement")
print("3. for statement")
users_choose = int(input("make your choose entering the number (1 or 2 or 3) "))

if users_choose == 1 :

    print("This is if statement usage example.")
    print("You have to guess the right number trying")
    if_example()

elif users_choose == 2 :

    print("This is while statement usage example.")
    print("You have to guess the right number trying repetitively:")
    while_example()

elif users_choose == 3 :

    print("This is for statement usage example.")
    iteration_num = int(input("Enter the (integer) number of iteration you want execute: "))
    for_example(iteration_num)

else :
    print("You entered a not acceptable choice!")



