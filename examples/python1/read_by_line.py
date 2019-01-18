

file = open('.env', "r")
filecontent = file.read()
print "File content:"
print filecontent
my_line = ""

for line in filecontent.splitlines():
    print "Working on line", line
    if line.find("DB_DATABASE="):
        print "Found line containing DB_DATABASE="
        break
