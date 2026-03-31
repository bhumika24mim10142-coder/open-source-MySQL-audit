#!/bin/bash
# Script 4: Log File Analyzer
# Author: Bhumika Singh Thakur
# Purpose: Analyze log file and count keyword occurrences

LOG_FILE=$1
KEYWORD=$2

if [ -z "$LOG_FILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "File does not exist!"
    exit 1
fi

if [ -z "$KEYWORD" ]; then
    KEYWORD="error"
fi

TOTAL_LINES=$(wc -l < $LOG_FILE)
MATCH_COUNT=$(grep -i "$KEYWORD" $LOG_FILE | wc -l)

echo "====== LOG ANALYZER ======"
echo "File        : $LOG_FILE"
echo "Keyword     : $KEYWORD"
echo "Total Lines : $TOTAL_LINES"
echo "Matches     : $MATCH_COUNT"

if [ $TOTAL_LINES -gt 0 ]; then
    PERCENT=$((MATCH_COUNT * 100 / TOTAL_LINES))
    echo "Match %     : $PERCENT%"
fi

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" $LOG_FILE | tail -5

echo "=========================="