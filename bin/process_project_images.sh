#!/usr/bin/env bash

# Get the base directory
CURRENT_DIR=$(dirname "$(readlink -f "$0")")
BASE_DIR="$CURRENT_DIR/.."
# Specify the DIRECTORY path
DIRECTORY="$BASE_DIR/project_images/source"
RESIZE_DIR="$BASE_DIR/project_images/resized"
OUTPUT_DIR="$BASE_DIR/project_images/ready"

IMAGE_SIZE=1920

mkdir -p "$RESIZE_DIR"
mkdir -p "$OUTPUT_DIR"

# Use find to iterate over image files, preserving subdirectory structure
find "$DIRECTORY" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" \) | while read -r file; do
    # Get path relative to source directory
    relpath="${file#"$DIRECTORY"/}"
    reldir=$(dirname "$relpath")
    filename=$(basename "$file")

    # Create matching subdirectories in resize and output dirs
    mkdir -p "$RESIZE_DIR/$reldir"
    mkdir -p "$OUTPUT_DIR/$reldir"

    echo "Resizing file: $file"
    convert "$file" -resize "${IMAGE_SIZE}x" "$RESIZE_DIR/$relpath"

    echo "Converting file: $RESIZE_DIR/$relpath"
    npx image-prepub --noresize "$RESIZE_DIR/$relpath" "$OUTPUT_DIR/$reldir/"
done

