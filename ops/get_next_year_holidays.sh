#!/bin/bash

CURRENT_YEAR=$(date +%Y)

NEXT_YEAR=$((CURRENT_YEAR + 1))

./get_holidays.sh vn $NEXT_YEAR