#!/bin/bash
compile()
{
  #compile recursively all files to current folder/out
  javac -d "$PWD" $(find "$1" -name '*.java');

  #That part doesn't work now. There should be insterting main class
  echo "Main-Class: $2.Sample" > "$PWD/manifest.mf"

  #creating jar
  jar cvfm "$PWD/sample.jar" "$PWD/manifest.mf" $(find "$PWD" -name '*.class' | sed 's:^'$PWD'/::')
  rm -rf $PWD/com
  rm $PWD/manifest.mf
}

main()
{
  local TEMP_PACKAGE_NAME=`grep -r -n -i --include="*.java" "static void main" .`
  local PACKAGE_NAME=`echo ${TEMP_PACKAGE_NAME} | sed -E 's/^\.\/src\/(.+)\/[^\/]+\.java:[0-9]+: .+$/\1/' | tr "/" .`
  echo $PACKAGE_NAME
  compile "$PWD/src" $PACKAGE_NAME
}

main
