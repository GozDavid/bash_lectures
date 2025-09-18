#!/bin/python3

e = 2
print('At beginning e = {}'.format(e))

def test1():
    e = 4
    print('Hello. Now in the test1 function e = {}'.format(e))

def test2(x):
    x = 2
    print('Hello. Now in the test2 function x = {}'.format(x))

def test3(val):
    return  val * val
    
test1()
print('After calling test1 e = {}'.format(e))

e = 5
print('In the file before calling test2 reassing e = {}'.format(e))

test2(e)
print('After calling the test2 e = {}'.format(e))

e = test3(e)
print('After calling the test3 e = {}'.format(e))
# ########################################################################################


# def try_to_change_list_contents(the_list):
#     print('got', the_list)
#     the_list.append('four')
#     print('changed to', the_list)

# outer_list = ['one', 'two', 'three']

# print('before, outer_list =', outer_list)
# try_to_change_list_contents(outer_list)
# print('after, outer_list =', outer_list)


# def try_to_change_list_reference(the_list):
#     print('got', the_list)
#     the_list = ['and', 'we', 'can', 'not', 'lie']
#     print('set to', the_list)

# outer_list = ['we', 'like', 'proper', 'English']

# print('before, outer_list =', outer_list)
# try_to_change_list_reference(outer_list)
# print('after, outer_list =', outer_list)
