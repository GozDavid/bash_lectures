
# Creation of the required tree:
echo "Creation of the required tree"
mkdir -p my_examples/ex1.dir
touch my_examples/ex2.txt
mkdir -p my_examples/ex3.dir
touch my_examples/ex3.dir/file1.txt
touch my_examples/ex3.dir/file2.txt
touch my_examples/ex3.dir/file3.txt
echo "Result with ls -rl"
ls -rl

echo

# Remove read permissions to directory  /ex1.dir
echo "Remove read permissions to file  /ex1.dir"
chmod -r my_examples/ex1.dir

echo

# Redirect output on a file. Error is displayed on terminal
echo "Redirect output on a file. (Error is displayed on terminal between ----)"
echo "With command: find . -name file3.txt > file_out.txt"
echo
echo "----------"
find . -name file3.txt > file_out.txt
echo "----------"
echo
echo
echo "content of file file_out.txt:"
cat file_out.txt

echo

# Redirect error on a file. Output is displayed on terminal
echo "Redirect error on a file. (Output is displayed on terminal between ----)"
echo "With command: find . -name file3.txt 2> file_err.txt"
echo "----------"
find . -name file3.txt 2> file_err.txt
echo "----------"
echo
echo

echo "content of file file_err:"
cat file_err.txt
echo

# Redirect output and errors symultaneously
echo "Redirect output and errors symultaneously"
echo "With the command: find . -name file3.txt &> file_log.txt"
find . -name file3.txt &> file_log.txt

echo "Log file file_log.txt content:"
cat file_log.txt

echo

# Use pipe to redirect the output of a command to another command and to a file
echo "Use pipe to redirect the output of a command to another command and to a file"
echo "command used is: less vialactea.txt | wc -l > myout.txt"
less vialactea.txt | wc -l > myout.txt
echo "Number of rows counted:"
cat  myout.txt

echo

# Use tee to redirect output both to stdout and to a file
echo "Use tee to redirect output both to stdout and to a file"
echo "Following the result:"
find . -name file3.txt  | tee -a log
