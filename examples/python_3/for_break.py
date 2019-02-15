def for_else_executing():
    i=0
    for i in range(10):
        print(i)
        i=i+1
    else:
        print "Executing else statement"

def for_else_break():
    i=0
    for i in range(10):
        if i==5:      
            print('Exiting/breaking from while with i=%s' % (i))
            break
        else:
            print("i=%s" % i)
        i=i+1
    else:
        print "Executing else statement"

def for_loop_not_executing():
    i=0
    for i in range(10,20):
        print(i)
        i=i+1
    else:
        print "Executing  else statement"

"""####### Body ######"""
print("-----------")
print("-----------")
print("FIRST CASE: for_else completely executing")
print("Expected output: print i in 0...9 and then \'executing else statement\'")
print("OUTPUT:")
for_else_executing()

print("-----------")
print("-----------")
print("SECOND CASE: for_else partially executed, break encountered, else not executed")
print("Expected output: print i in 0...4")
print("OUTPUT:")
for_else_break()

print("-----------")
print("-----------")
print("THIRD CASE: for executed in any case")
print("OUTPUT:")
for_loop_not_executing()
