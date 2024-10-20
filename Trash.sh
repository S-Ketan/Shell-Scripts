#!/bin/bash

TRASH_FOLDER="$HOME/.local/share/Trash/files/"


if [ ! -d "$TRASH_FOLDER" ]; then
    mkdir -p "$TRASH_FOLDER"
fi

for x in "$@"; do
    mv "$x" "$TRASH_FOLDER"
done

echo "Files moved to trash:"
ls "$TRASH_FOLDER"

read -p "Do you want to delete the folder? (y/n): " response
if [ "$response" = "y" ]; then
    rm -r "$TRASH_FOLDER"
    echo "Trash folder emptied."
else
    echo "Trash folder not emptied."
fi
