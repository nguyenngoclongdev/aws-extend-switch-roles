#!/bin/bash
#--
# archive.sh
#--
zipfile=aws-extend-switch-roles.zip

cd dist/chrome;
\rm -f $zipfile
zip -r $zipfile \
  manifest.json *.html icons/ js/ 
echo "archived: chrome/$zipfile"

echo "----"

cd ../firefox;
\rm -f $zipfile
zip -r $zipfile \
  manifest.json *.html icons/ js/ 

echo "archived: firefox/$zipfile"
