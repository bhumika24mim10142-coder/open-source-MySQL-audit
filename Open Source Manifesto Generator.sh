#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Bhumika Singh Thakur
# Purpose: Create a personalized open-source statement

echo "====== OPEN SOURCE MANIFESTO ======"

read -p "Why do you like open source? " ANS1
read -p "How do you use open-source tools? " ANS2
read -p "Will you contribute in future? " ANS3

USER_NAME=$(whoami)
DATE=$(date)

FILE="manifesto_$USER_NAME.txt"

echo "Open Source Manifesto" > $FILE
echo "Generated on: $DATE" >> $FILE
echo "" >> $FILE
echo "I believe that open-source software is important because $ANS1." >> $FILE
echo "In my work, I use open-source tools like $ANS2." >> $FILE
echo "In future, I plan to contribute by $ANS3." >> $FILE

echo ""
echo "Your manifesto has been saved in $FILE ✔"
echo "========================================"