#!/bin/bash

# Colors
GREEN="\e[32m"
CYAN="\e[36m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"

echo -e "${CYAN}\nAdding files to the commit...${RESET}"
git add .

echo
read -p "Add a commit message (ENTER = \"update\"): " COMMIT_MESSAGE
COMMIT_MESSAGE=${COMMIT_MESSAGE:-update}

echo -e "${YELLOW}\nInitiating commit: \"${COMMIT_MESSAGE}\"...${RESET}"
git commit -m "$COMMIT_MESSAGE"

if [ $? -ne 0 ]; then
    echo -e "${RED}\nCommit failed!${RESET}"
    exit 1
fi

echo -e "${CYAN}\nCommit successful! Now pushing to main...${RESET}"
git push

if [ $? -ne 0 ]; then
    echo -e "${RED}\nPush failed!${RESET}"
    exit 1
fi

echo -e "${GREEN}\n✔ Commit & push complete! Have a nice day!${RESET}\n"

