#!/bin/bash

# Define the base URL
BASE_URL="https://pricklegames.cloud/Games/BigGames/SecretAgentHTML5"

# Missing file paths
FILES=(
    "icons/loading-logo.png"
    "images/background-sheet0.png"
    "images/shared-0-sheet5.png"
    "images/shared-0-sheet6.png"
    "images/shared-0-sheet7.png"
    "images/shared-0-sheet4.png"
    "images/shared-1-sheet1.png"
    "images/shared-1-sheet2.png"
    "images/shared-0-sheet2.png"
    "images/shared-0-sheet1.png"
    "images/shared-1-sheet0.png"
    "images/startfade-sheet0.png"
    "images/totalbloodeffect-sheet0.png"
    "images/losewinfade-sheet0.png"
    "images/startbackground-sheet0.png"
    "images/shared-0-sheet3.png"
    "media/prize%20wheel%20spin%202%20tick.webm"
    "media/wood%201.webm"
    "media/water%201.webm"
    "media/quick%20transition%206.webm"
    "media/special%20interface%209.webm"
    "media/switch%205.webm"
    "media/click%2003.webm"
    "media/you%20lose%203.webm"
    "media/special%20&%20powerup%2029.webm"
    "media/you%20win%203.webm"
    "media/special%20&%20powerup%2031.webm"
    "media/shot_02.webm"
    "media/item%20lock%201.webm"
    "box2d.wasm"
)

# Loop through the file list
for FILE in "${FILES[@]}"; do
    # Extract directory from the file path
    DIRECTORY=$(dirname "$FILE")
    
    # Create the directory structure if it doesn't exist
    mkdir -p "$DIRECTORY"
    
    # Construct the full URL
    URL="${BASE_URL}/${FILE}"
    
    # Download the file
    echo "Downloading: $URL"
    wget -q --show-progress -c -P "$DIRECTORY" "$URL"
    
    # Check if the download was successful
    if [[ $? -ne 0 ]]; then
        echo "Failed to download: $URL"
    fi
done

echo "All downloads completed!"
