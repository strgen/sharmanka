#!/bin/bash
compile()
{
  #compile recursively all files to current folder/out
  javac -d "$PWD" $(find "$1" -name '*.java');

  #provide main class
  echo "Main-Class: $2.$3" > "$PWD/manifest.mf"

  #creating jar
  jar cvfm "$PWD/sample.jar" "$PWD/manifest.mf" $(find "$PWD" -name '*.class' | sed 's:^'$PWD'/::')
  rm -rf $PWD/com
  rm $PWD/manifest.mf
}

main()
{
  local TEMP_PACKAGE_NAME=`grep -r -n -i --include="*.java" "public\s\+static\s\+void\s\+main\s*(" .`
  echo "TEMP_PACKAGE_NAME: $TEMP_PACKAGE_NAME"

  local PACKAGE_NAME=`echo ${TEMP_PACKAGE_NAME} | sed -E 's/^\.\/src\/(.+)\/[^\/]+\.java:[0-9]+: .+$/\1/' | tr "/" .`
  local CLASS_NAME=`echo ${TEMP_PACKAGE_NAME} | sed -E 's/^\.\/src\/.+\/([^\/]+)\.java:[0-9]+: .+$/\1/'`
  echo "Package name: $PACKAGE_NAME"
  echo "Class name: $CLASS_NAME"
  compile "$PWD/src" $PACKAGE_NAME $CLASS_NAME
}

main
