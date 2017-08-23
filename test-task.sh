PROJECT_NAME=$1
PROJECT_NAME_LOWER=$(echo $PROJECT_NAME | tr '[:upper:]' '[:lower:]')
TEST_CASE=$PROJECT_NAME_LOWER$2

echo "Project: $PROJECT_NAME"

PATH_TO_TEST_INPUTS=input
PATH_TO_TEST_OUTPUTS=output

javac $PROJECT_NAME.java

if [ $? -ne 0 ]
then
	echo -e ">> " + $1 + ".java didn't compile!"
	exit 1
fi

echo -e ">> Compiled Successfully!";
cp $PATH_TO_TEST_INPUTS/$TEST_CASE.in $TEST_CASE.in.tmp
java $PROJECT_NAME < $TEST_CASE.in.tmp > result
rm $TEST_CASE.in.tmp

DIFF=$(diff $PATH_TO_TEST_OUTPUTS/$TEST_CASE.out result)

if [ "$DIFF" != "" ]
then
	echo -e ">> Test Failed!"
	echo -e $DIFF
	exit 1
else 
	echo -e ">> Test Success!"
fi

rm result
rm *.class



