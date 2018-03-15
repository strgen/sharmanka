#!/bin/bash


compile()
{
  #debug
  echo $(find "$1" -name '*.java');


  #create folder if it doesn't exist
  if [ ! -d "$PWD/out" ]
  then
    mkdir "$PWD/out"
  fi

  #compile recursively all files to current folder/out
  javac -d "$PWD/out" $(find "$1" -name '*.java');

  #That part doesn't work now. There should be insterting main class
  echo "Main-Class: Sample" > "$PWD/out/manifest.mf"


  #echo $(find "$PWD/out" -name '*.class')

  local OUT=$(echo $PWD/out | rev | cut -d'/' -f-3 | rev)

  #echo "$PWD/out" | rev | cut -d'/' -f-3 | rev

  echo "out = $OUT"

  #creating jar
  jar cvfm "$PWD/out/sample.jar" "$PWD/out/manifest.mf" $(find "$PWD/out" -name '*.class')
}

main()
{
  if [ $# -eq 0 ]
  then
    echo "You didn't specify src folder, wanna use $PWD/src y/n ?"
     read decision
    if [ $decision = "y" ] || [ $decision = "Y" ]
    then
      local PAC=`grep -r -n -i --include="*.java" "static void main" .`
      echo ${PAC} | sed -E 's/^\.\/src\/(.+)\/[^\/]+\.java:[0-9]+: .+$/\1/'
      compile "$PWD/src"
    fi
  else
      compile $1
  fi
}

main
