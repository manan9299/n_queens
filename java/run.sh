DIR=$(dirname $0)
if [[ $# -eq 3 ]]; then
  NAME=$1
  shift
else
  NAME=Queens
fi
FROM=$1
TO=$2

cd $DIR
javac ${NAME}.java
java -classpath . $NAME $FROM $TO
rm *.class
