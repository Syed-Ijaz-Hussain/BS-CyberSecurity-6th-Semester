#!/bin/bash

# Digital Forensics Imaging Script
# Author: Syed Ijaz Hussain
# Purpose: Create DD image, generate hash, convert to E01, verify evidence

echo "-------------------------------------"
echo " Digital Forensics Imaging Script"
echo "-------------------------------------"

# Ask for evidence drive
read -p "Enter evidence drive (example /dev/sdb): " DRIVE

# Output file name
read -p "Enter image name: " NAME

# Step 1: Create DD Image
echo "Creating DD Image..."
sudo dd if=$DRIVE of=$NAME.dd bs=4M status=progress

echo "DD Image Created: $NAME.dd"

# Step 2: Generate SHA256 Hash
echo "Generating SHA256 Hash..."
sha256sum $NAME.dd > $NAME-hash.txt

echo "Hash stored in $NAME-hash.txt"

# Step 3: Convert DD to E01
echo "Converting DD image to E01 format..."
ewfacquire $NAME.dd

echo "E01 Image Created"

# Step 4: Verify E01 Image
echo "Verifying E01 image integrity..."
ewfverify $NAME.E01

echo "-------------------------------------"
echo " Forensic Imaging Completed"
echo "-------------------------------------"


How to Use the Script
️1.Create file
nano forensic-commands.sh
Paste the script and save.
️
2.Give permission
chmod +x forensic-commands.sh

️3.Run the script
./forensic-commands.sh

What This Script Does
Step	Task
1	Creates DD forensic image
2	Generates SHA256 hash
3	Converts image to E01 forensic format
4	Verifies evidence integrity
