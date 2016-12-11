#! /bin/bash

cd /C/PortableGit/iii/iii
ls
while true
do
echo 'test'
fc="$(ls | wc -l)"
if [ $fc -gt 0 ];
   then
  echo 'test1'
  FILES=/C/PortableGit/iii/iii/*
  for f in $FILES
    do
    /mingw64/bin/git add $f
    /mingw64/bin/git commit -m "$(date +%H-%M-%S)"
    /mingw64/bin/git remote add origin git@github.com:orozcohsu/iii.git
    /mingw64/bin/git push -u origin master
    /mingw64/bin/git remote remove origin
    done
    fi;
    rm -rf /C/PortableGit/iii/iii/*
    sleep 3
done


