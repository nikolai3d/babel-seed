
#!/bin/bash

commandCheck () {
   # if [ -z "$1" ]                           # Is parameter #1 zero length?
   # then
   #   echo "-Parameter #1 is zero length.-"  # Or no parameter passed.
   # else
   #   echo "-Parameter #1 is \"$1\".-"
   # fi
   #
   # if [ -z "$2" ]                           # Is parameter #1 zero length?
   # then
   #   echo "-Parameter #2 is zero length.-"  # Or no parameter passed.
   # else
   #   echo "-Parameter #2 is \"$2\".-"
   # fi

   command -v $1 >/dev/null 2>&1;

   local command_ok=$?;
   # echo $command_ok;
   if [ "$command_ok" -ne "0" ]
   then
       echo >&2 "$2";
   fi

   return $command_ok
   }


commandCheck "node" "I require NODE.JS but it's not installed.\n - Please head to https://nodejs.org/ and install the latest LTS (Long-Term Support) version.";
node_ok=$?;

commandCheck "npm" "I require NPM but it's not installed.\n - Please head to https://nodejs.org/ and install/reinstall the latest LTS (Long-Term Support) version.";
npm_ok=$?;

commandCheck "gulp" "I require GULP but it's not installed.\n - Please type 'sudo npm install gulp --global' and try again.\n - (On WINDOWS, type 'npm install gulp --global' in any terminal ran by Administrator, and try again )";
gulp_ok=$?;

if  [ "$node_ok" = "0" ] && [ "$npm_ok" = "0" ] && [ "$gulp_ok" = "0" ]
then
nodeversion=$(node --version);
    echo "Node.JS version: \"$nodeversion\"";
npmversion=$(npm --version);
    echo "NPM version: \"$npmversion\"";
gulpversion=$(gulp --version);
    echo "GULP version: \"$gulpversion\"";

fi

# command -v nodex >/dev/null 2>&1;
# node_ok=$?;
# echo $node_ok;
# if [ "$node_ok" -ne "0" ]
# then
#     echo >&2 "I require NODE.JS but it's not installed.\n - Please head to https://nodejs.org/ and install the latest LTS (Long-Term Support) version."
# fi
#
#
# command -v npmx >/dev/null 2>&1;
# npm_ok=$?;
# echo $npm_ok;
# if [ "$npm_ok" -ne "0" ]
# then
#     echo >&2 "I require NPM but it's not installed.\n - Please head to https://nodejs.org/ and install/reinstall the latest LTS (Long-Term Support) version."
# fi
#
# command -v gulpx >/dev/null 2>&1;
# gulp_ok=$?;
# echo $gulp_ok;
# if [ "$gulp_ok" -ne "0" ]
# then
#     echo >&2 "I require GULP but it's not installed.\n - Please type 'sudo npm install gulp --global' and try again."
#     echo >&2 "- (On WINDOWS, type 'npm install gulp --global' in any terminal ran by Administrator, and try again )"
# fi
