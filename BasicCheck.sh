#!/bin/bash
folderName=$1
executeble=$2
cd $folderName
value=0
make > /dev/null 2>&1
if [ $? -eq 0 ]
then
	compilationval="PASS"
else
	compilationval="FAILD"
	valgrindval="Automatic Faild"
	helgrindval="Automatic Faild"
echo "	Compilation	Memory Leaks	Thread race"
echo "	" $compilationval "		"	 $valgrindval 	 "		" $helgrindval
	echo "exit reason:" 7
	exit 7
fi
	valgrind --tool=memcheck --leak-check=full --error-exitcode=1 ./$executeble > /dev/null 2>&1
if [ $? -eq 0 ]
then
	valgrindval="PASS"
else 
	valgrindval="FAILD"
	((value=$value+2))
fi
	valgrind  --tool=helgrind --error-exitcode=1 ./$executeble > /dev/null 2>&1
if [ $? -eq 0 ]
then
	helgrindval="PASS"
else
	helgrindval="FAILD"
	((value=$value+1))
fi

echo "	Compilation	Memory Leaks	Thread race"
echo "	" $compilationval "		"	 $valgrindval 	 "		" $helgrindval
	echo "exit reason:" $value
	exit $value
