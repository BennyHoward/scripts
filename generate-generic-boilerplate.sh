#!/usr/bin/env sh

WORKING_URL='https://raw.githubusercontent.com/BennyHoward/scripts/master/'

FILES_TO_DOWNLOAD=(.editorconfig .gitconfig .markdownlint.json LICENSE README.md)

FILES_TO_CREATE=(.tool-verions Tasks.todo)

# Download pre-built files
for FILE in ${FILES_TO_DOWNLOAD[@]}; do
  echo "Downloading '$WORKING_URL/generic-boilerplate-project-files/$FILE'..."
  curl --silent "$WORKING_URL/generic-boilerplate-project-files/$FILE" --output "$FILE"

  # Print action items for certain files
  if [[ "$FILE" == 'LICENSE' ]]; then
    echo "Update '$FILE' with your licesing information."
    echo "Please update <year> and <copyright holder> information in the '$FILE' file before making your initial commit and pushing."
    echo "This is to potect you form any potential legal issues from any commit should any commit be checked out."
  elif [[ "$FILE" == 'README.md' ]]; then
    echo "Update the '$FILE' file."
    echo "Open and follow the suggested template."
    echo "You don't necessarily need to do this before making your initial commit, but it's good practice to update as much as you can."
  fi
  echo ''
done

# Create project files
for FILE in ${FILES_TO_CREATE[@]}; do
  echo "Creating empty file './$FILE'..."
  touch "$FILE"
  echo ''
done
