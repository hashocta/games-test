#!/bin/bash
for file in *; do
  # Replace spaces with underscores and remove special characters
  new_name=$(echo "$file" | tr ' ' '_' | tr -d '&')
  # Rename the file if the name changes
  if [[ "$file" != "$new_name" ]]; then
    mv "$file" "$new_name"
  fi
done
