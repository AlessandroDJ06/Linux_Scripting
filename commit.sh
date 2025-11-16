#!/bin/bash
echo "adding files to the commit..." 
git add . 

read -p "add a commit message for this commit... ( enter for default \"update\")" COMMIT_MESSAGE 
COMMIT_MESSAGE=${COMMIT_MESSAGE:-update}

echo "initiating commit: \"${COMMIT_MESSAGE}\" ..."
git commit -m "$COMMIT_MESSAGE" 

echo "commit succesfull! Now lets Push to main..." 

git push
echo "commit complete! have a nice day!"
