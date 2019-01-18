x = 2.3
y = 1.2
# test is a function testing if two numbers are equal or one greater then the oter
def test(x,y):
     if x==y: 
          print 'the two number are equal'
     elif x > y: 
          print ' the first number is the greater'
     else: 
          print ' the former number is the greater'

print  'now testing : ', x, y
test(x,y)
for I in range(2,5,1):
     for J in range(5,1,-1):
          print 'now testing : ', I,J
          test(I,J)
