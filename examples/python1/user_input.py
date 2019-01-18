# the script takes from the user two input parameters
import sys

while(True):
     print 'PLEASE INSERT AN INTEGER NUMBER IN THE RANGE 0-10'
     param1 = input()
     if int(param1) in range(11): # notare che raw_input restituisce una stringa
          while(True):
               print 'PLEASE INSERT A CHAR PARAMETER IN [A,B,C]'
               param2 = raw_input()
               if param2 in ['A','B','C']:
                     print 'uso I due parametri passati dall utente: ',param1,param2
                     sys.exit()
               else: print 'TRY AGAIN PLEASE'
     else: print 'TRY AGAIN PLEASE'
