# This file contains a make script for the MnemonicGen application
#
# Author: Josh McIntyre
#

# This block defines makefile variables
SRC_FILES=src/core/*.py
DATA_FILES=res/data/*.txt

BUILD_DIR=bin/mnemonicgen

# This rule builds the application
build: $(SRC_FILES) $(DATA_FILES)
	mkdir -p $(BUILD_DIR)
	cp $(SRC_FILES) $(DATA_FILES) $(BUILD_DIR)

# This rule cleans the build directory
clean: $(BUILD_DIR)
	rm $(BUILD_DIR)/*
	rmdir $(BUILD_DIR)
