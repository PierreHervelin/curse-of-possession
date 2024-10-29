#!/bin/bash

# Define the source directory and the output zip file
SOURCE_DIR="data"
PACK_FILE="pack.mcmeta"
OUTPUT_DIR="dist"
OUTPUT_ZIP="$OUTPUT_DIR/curse_of_possession.zip"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Check if the pack.mcmeta file exists
if [ ! -f "$PACK_FILE" ]; then
    echo "Error: File '$PACK_FILE' does not exist."
    exit 1
fi

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"
rm -f "$OUTPUT_ZIP"

# Create the zip archive
zip -r "$OUTPUT_ZIP" "$SOURCE_DIR" "$PACK_FILE"

echo "Compression completed successfully. Output file: $OUTPUT_ZIP"