def while_else_executing():
    i=0
    while i<10:
        print(i)
        i=i+1
    else:
        print "Executing else statement"

def while_else_break():
    i=0
    while i<10:
        if i==5:      
            print('Exiting/breaking from while with i=%s' % (i))
            break
        else:
            print("i=%s" % i)
        i=i+1
    else:
        print "Executing else statement"

def while_body_not_executing():
    i=0
    while i<0:
        print(i)
        i=i+1
    else:
        print "Executing only else statement"

"""####### Body ######"""
print("-----------")
print("-----------")
print("FIRST CASE: while_else completely executing")
print("Expected output: print i in 0...9 and then \'executing else statement\'")
print("OUTPUT:")
while_else_executing()

print("-----------")
print("-----------")
print("SECOND CASE: while_else partially executed, break encountered, else not executed")
print("Expected output: print i in 0...4")
print("OUTPUT:")
while_else_break()

print("-----------")
print("-----------")
print("THIRD CASE: while body NOT executed, but else body yes")
print("Expected output: Executing only else statement")
print("OUTPUT:")
while_body_not_executing()
