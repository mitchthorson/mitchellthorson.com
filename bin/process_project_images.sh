#!/usr/bin/env bash

# Get the base directory
CURRENT_DIR=$(dirname "$(readlink -f "$0")")
BASE_DIR="$CURRENT_DIR/.."
# Specify the DIRECTORY path
DIRECTORY="$BASE_DIR/project_images/source"
RESIZE_DIR="$BASE_DIR/project_images/resized"
OUTPUT_DIR="$BASE_DIR/project_images/ready"

IMAGE_SIZE=900

mkdir -p $RESIZE_DIR
mkdir -p $OUTPUT_DIR

# Use a for loop to iterate over each file in the DIRECTORY
for file in "$DIRECTORY"/*; do
    filename=$(basename $file)
    echo "Resizing file: $file"
    convert $file -resize "$IMAGE_SIZE"x $RESIZE_DIR/$filename

    echo "Converting file: $RESIZE_DIR/$filename"
    image-prepub --noresize $RESIZE_DIR/$filename $OUTPUT_DIR/
done

