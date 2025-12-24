#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <userfile>"
    exit 1
fi

FILE="$1"


if [ ! -f "$FILE" ] || [ ! -r "$FILE" ]; then
    echo "Error: '$FILE' is not a regular readable file."
    exit 1
fi

LOGFILE="/tmp/users.log"
mkdir -p /opt/users
> "$LOGFILE"

while read -r username password; do
    [ -z "$username" ] && continue

    if id "$username" >/dev/null 2>&1; then
        echo "$username already exists" >> "$LOGFILE"
    else
        useradd -m -d "/opt/users/$username" "$username"

        echo "$username:$password" | chpasswd

        echo "$username created" >> "$LOGFILE"
    fi

done < "$FILE"

echo "Done. Log written to $LOGFILE"

