#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 COUNTRY YEAR"
    exit 1
fi

COUNTRY="$1"
YEAR="$2"

API_URL="https://calendarific.com/api/v2/holidays"

if [ -z "$API_KEY" ]; then
    echo "API_KEY is not set in the environment. Please enter your API_KEY:"
    read -s API_KEY
fi

DIRECTORY_PATH="${COUNTRY}"
FILENAME="${YEAR}.json"
FILE_PATH="${DIRECTORY_PATH}/${FILENAME}"

if [ ! -d "${DIRECTORY_PATH}" ]; then
    mkdir -p "${DIRECTORY_PATH}"
fi

QUERY_STRING="?api_key=$API_KEY&country=$COUNTRY&year=$YEAR"

curl "${API_URL}${QUERY_STRING}" -o "${FILE_PATH}"

if [ -f "${FILE_PATH}" ]; then
    echo "JSON response for ${YEAR} saved to ${FILE_PATH}"
else
    echo "Failed to save JSON response."
fi